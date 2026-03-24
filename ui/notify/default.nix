{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_ui;
in {
  options.nvim_ui.notify = mkEnableOption "notify";
  config = mkIf cfg.notify {
    programs.nixvim.plugins = {
      notify = {
        enable = true;
        settings = {backgroundColour = "#000000";};
      };
    };
  };
}
