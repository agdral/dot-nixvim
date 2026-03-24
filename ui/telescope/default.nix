{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_ui;
  keymapsF = import ./keymaps.nix;
in {
  options.nvim_ui.telescope = mkEnableOption "telescope";
  config = mkIf cfg.telescope {
    programs.nixvim.keymaps = keymapsF;

    programs.nixvim.plugins.telescope = {
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
