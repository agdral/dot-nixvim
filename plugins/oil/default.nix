{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_plugins;
in {
  config = mkIf cfg.oil {
    plugins = {
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
