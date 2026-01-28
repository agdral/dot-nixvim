{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_ui;
in {
  config = mkIf cfg.lualine {
    plugins = {
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
