{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_plugins;
in {
  config = mkIf cfg.vectorCode {
    plugins = {
      lsp.servers = {
        vectorcode_server.enable = true;
      };

      codecompanion = {
        luaConfig.post = ''
          extensions = {
            vectorcode = {
              opts = {
                tool_group = {
                  enabled = true,
                  extras = {},
                  collapse = false,
                },
                tool_opts = {
                  ["*"] = {},
                  ls = {},
                  vectorise = {},
                  query = {
                    max_num = { chunk = -1, document = -1 },
                    default_num = { chunk = 50, document = 10 },
                    include_stderr = false,
                    use_lsp = false,
                    no_duplicate = true,
                    chunk_mode = false,
                    summarise = {
                      ---@type boolean|(fun(chat: CodeCompanion.Chat, results: VectorCode.QueryResult[]):boolean)|nil
                      enabled = false,
                      adapter = nil,
                      query_augmented = true,
                    }
                  },
                  files_ls = {},
                  files_rm = {}
                }
              },
            },
          }
        '';
      };
    };
  };
}
