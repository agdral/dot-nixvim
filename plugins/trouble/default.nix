{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_plugins;
  keymapsF = import ./keymaps.nix;
in {
  options.nvim_plugins.trouble = mkOption {
    type = types.bool;
    default = false;
  };
  config = mkIf cfg.trouble {
    programs.nixvim.keymaps = keymapsF;

    programs.nixvim.plugins.trouble = {
      enable = true;
      settings = {
        auto_close = true;
      };
    };
  };
}
