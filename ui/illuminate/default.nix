{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_ui;
in {
  options.nvim_ui.illuminate = mkEnableOption "illuminate";
  config = mkIf cfg.illuminate {
    programs.nixvim.plugins.illuminate = {
      enable = true;
      settings = {
        filetypes_denylist = [
          "neo-tree"
        ];
      };
    };
  };
}
