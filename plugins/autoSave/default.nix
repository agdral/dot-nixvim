{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_plugins;
in {
  config = mkIf cfg.autoSave {
    plugins = {
      auto-save = {
        enable = true;
        settings.noautocmd = true;
      };
    };
  };
}

