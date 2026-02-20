{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_plugins;
in {
  options.nvim_plugins.autoSave = mkOption {
    type = types.bool;
    default = false;
  };
  config = mkIf cfg.autoSave {
    programs.nixvim.plugins = {
      auto-save = {
        enable = true;
        settings.noautocmd = true;
      };
    };
  };
}

