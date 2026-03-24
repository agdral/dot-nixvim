{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_ui;
in {
  options.nvim_ui.toggleterm = mkEnableOption "toggleterm";
  config = mkIf cfg.toggleterm {
    programs.nixvim.plugins = {
      toggleterm = {
        enable = true;
        settings = {
          direction = "float";
          autochdir = true;
          shell = "fish";
          open_mapping = "[[<c-s>]]";
        };
      };
    };
  };
}
