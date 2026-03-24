{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_ui;
in {
  options.nvim_ui.lualine = mkEnableOption "lualine";
  config = mkIf cfg.lualine {
    programs.nixvim.plugins = {
      lualine = {
        enable = true;
        settings = {
          options = {
            globalstatus = true;
            ignore_focus = [
              "neo-tree"
              "nvim-tree"
            ];
          };
        };
      };
    };
  };
}
