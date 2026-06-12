{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_plugins;
in {
  options.nvim_plugins.codeCompanion = mkEnableOption "Code Companion";
  config = mkIf cfg.codeCompanion {
    programs.nixvim.plugins = {
      codecompanion = {
        enable = true;
        settings = {
          adapters.http.deepseek = {
            __raw = ''
              function()
                return require('codecompanion.adapters').extend('deepseek', {
                  env = {
                      api_key = vim.env.DEEPSEEK_API_KEY,
                  },
                })
              end
            '';
          };
          opts = {
            log_level = "DEBUG";
          };
          interactions = {
            agent = {
              adapter = "deepseek";
            };
            chat = {
              adapter = "deepseek";
            };
            inline = {
              adapter = "deepseek";
            };
          };
        };
      };
    };
  };
}
