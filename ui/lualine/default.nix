{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_ui;
in {
  options.nvim_ui.lualine = mkOption {
    type = types.bool;
    default = false;
  };
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
