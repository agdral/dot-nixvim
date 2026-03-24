{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_ui;
in {
  options.nvim_ui.colorizer = mkEnableOption "colorizer";
  config = mkIf cfg.colorizer {
    programs.nixvim.plugins = {
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
