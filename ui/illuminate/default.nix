{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_ui;
in {
  options.nvim_ui.illuminate = mkOption {
    type = types.bool;
    default = false;
  };
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
