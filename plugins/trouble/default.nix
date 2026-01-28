{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_plugins;
  keymapsF = import ./keymaps.nix;
in {
  config = mkIf cfg.trouble {
    keymaps = keymapsF;

    plugins.trouble = {
      enable = true;
      settings = {
        auto_close = true;
      };
    };
  };
}
