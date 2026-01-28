{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_ui;
in {
  config = mkIf cfg.toggleterm {
    plugins = {
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
