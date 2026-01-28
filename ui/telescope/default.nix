{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_ui;
  keymapsF = import ./keymaps.nix;
in {
  config = mkIf cfg.telescope {
    keymaps = keymapsF;

    plugins.telescope = {
      enable = true;
      settings.defaults = {
        file_ignore_patterns = [
          "^.git/"
          "^output/"
          "^target/"
        ];
      };
    };
  };
}
