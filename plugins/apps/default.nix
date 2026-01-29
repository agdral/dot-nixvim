{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_plugins;
in {
  config = mkIf cfg.apps {
    plugins = {
      fidget.enable = true;
      dap.enable = true;
      comment.enable = true;
      nvim-autopairs.enable = true;
      lastplace.enable = true;
      vim-suda.enable = true;
    };
  };
}
