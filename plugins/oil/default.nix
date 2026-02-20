{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_plugins;
in {
  options.nvim_plugins.oil = mkOption {
    type = types.bool;
    default = false;
  };
  config = mkIf cfg.oil {
    programs.nixvim.plugins = {
      oil = {
        enable = true;
        settings = {
          view_options.show_hidden = true;
          default_file_explorer = false;
        };
      };
    };
  };
}
