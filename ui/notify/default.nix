{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_ui;
in {
  config = mkIf cfg.notify {
    plugins = {
      notify = {
        enable = true;
        settings = {backgroundColour = "#000000";};
      };
    };
  };
}
