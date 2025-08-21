{
  imports = [
    ./keymaps.nix
  ];

  plugins.codecompanion = {
    enable = true;
    settings = {
      adapters = {
        deepseek = {
          __raw = ''
            function()
              return require('codecompanion.adapters').extend('deepseek', {
                env = {
                    api_key = vim.env.DEEPSEEK_API_KEY,
                },
                schema = {
                  model = {
                    default = "deepseek-chat",
                  },
                  temperature = {
                    default = 0.4,
                  },
                },
              })
            end
          '';
        };
      };
      opts = {
        language = "Spanish";
      };
      strategies = {
        agent = {
          adapter = "deepseek";
        };
        chat = {
          adapter = "deepseek";
        };
        inline = {
          adapter = "deepseek";
        };
        cmd = {
          adapter = "deepseek";
        };
      };
    };
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
}
