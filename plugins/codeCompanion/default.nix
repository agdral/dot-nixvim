{
  config,
  lib,
  pkgs,
  ...
}:
with lib; let
  cfg = config.nvim_plugins;
  keymapsF = import ./keymaps.nix;

  codecompanion-new = pkgs.vimUtils.buildVimPlugin {
    pname = "codecompanion.nvim";
    version = "18.5.1-unstable-2026-01-24";
    src = pkgs.fetchFromGitHub {
      owner = "olimorris";
      repo = "codecompanion.nvim";
      rev = "26fa57cd0ac019c9bae539e7530f7c9401cbee55";
      hash = "sha256-NEgSYj+ja0EQTwPGur8D7PcECSdZ85z+w61vf1ES14s=";
    };
    meta.homepage = "https://github.com/olimorris/codecompanion.nvim/";
  };

in {
  config = mkIf cfg.codeCompanion {
    keymaps = keymapsF;

    plugins.codecompanion = {
      enable = true;
      package = codecompanion-new;
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
