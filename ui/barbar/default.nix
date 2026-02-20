{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_ui;
  keymapsF = import ./keymaps.nix;
in {
  options.nvim_ui.barbar = mkOption {
    type = types.bool;
    default = false;
  };
  config = mkIf cfg.barbar {
    programs.nixvim.keymaps = keymapsF;

    programs.nixvim.plugins = {
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
