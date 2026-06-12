{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_plugins;
  name = "codeCompanion";
in {
  options.nvim_plugins.${name} = mkEnableOption "${name}";
  config = mkIf cfg.${name} {
    programs.nixvim.plugins.codeCompanion = {
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
          log_level = "TRACE";
          send_code = true;
          use_default_actions = true;
          use_default_prompts = true;
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
}
