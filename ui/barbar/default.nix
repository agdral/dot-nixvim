{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_ui;
  keymapsF = import ./keymaps.nix;
in {
  config = mkIf cfg.barbar {
    keymaps = keymapsF;

    plugins = {
      barbar = {
        enable = true;
        settings = {
          maximum_padding = 1;
          maximum_length = 20;
        };
      };
    };
  };
}
