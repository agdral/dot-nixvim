{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_plugins;
in {
  options.nvim_plugins.apps = mkOption {
    type = types.bool;
    default = false;
  };
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
