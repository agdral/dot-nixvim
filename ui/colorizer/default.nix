{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_ui;
in {
  config = mkIf cfg.colorizer {
    plugins = {
      colorizer = {
        enable = true;
        settings = {
          user_default_options = {
            names = false;
          };
        };
      };
    };
  };
}
