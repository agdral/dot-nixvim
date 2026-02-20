{
  config,
  lib,
  pkgs,
  ...
}:
with lib; let
  cfg = config.nvim_plugins;
  keymapsF = import ./keymaps.nix;
in {
  options.nvim_plugins.codeCompanion = mkOption {
    type = types.bool;
    default = false;
  };
  config = mkIf cfg.codeCompanion {
    programs.nixvim.keymaps = keymapsF;

    programs.nixvim.plugins.codecompanion = {
      enable = true;
      settings = {
        http.adapters = {
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
        http.opts = {
          language = "Spanish";
        };
        strategies = {
          agent = {
            adapter = "deepseek";
            model = "deepseek-chat";
          };
          chat = {
            adapter = "deepseek";
            model = "deepseek-chat";
          };
          inline = {
            adapter = "deepseek";
            model = "deepseek-chat";
          };
          cmd = {
            adapter = "deepseek";
            model = "deepseek-chat";
          };
        };
      };
    };
  };
}
