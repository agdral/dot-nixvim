{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_plugins;
  keymapsF = import ./keymaps.nix;
in {
  options.nvim_plugins.git = mkOption {
    type = types.bool;
    default = false;
  };
  config = mkIf cfg.git {
    programs.nixvim.keymaps = keymapsF;

    programs.nixvim.plugins = {
      diffview.enable = true;
      gitsigns.enable = true;
    };
  };
}
