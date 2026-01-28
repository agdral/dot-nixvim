{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_plugins;
  keymapsF = import ./keymaps.nix;
in {
  config = mkIf cfg.git {
    keymaps = keymapsF;

    plugins = {
      diffview.enable = true;
      gitsigns.enable = true;
    };
  };
}
