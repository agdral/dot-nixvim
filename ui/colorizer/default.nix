{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_ui;
in {
  options.nvim_ui.colorizer = mkOption {
    type = types.bool;
    default = false;
  };
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
