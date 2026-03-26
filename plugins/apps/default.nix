{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_plugins;
in {
  options.nvim_plugins.apps = mkEnableOption "apps";
  config = mkIf cfg.apps {
    programs.nixvim.plugins = {
      fidget.enable = true;
      dap.enable = true;
      comment.enable = true;
      nvim-autopairs.enable = true;
      lastplace.enable = true;
      vim-suda.enable = true;
    };
  };
}
