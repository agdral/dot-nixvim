{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_plugins;
in {
  options.nvim_plugins.noneLs = mkOption {
    type = types.bool;
    default = false;
  };
  config = mkIf cfg.noneLs {
    programs.nixvim.plugins = {
      none-ls = {
        enable = true;
        enableLspFormat = true;
        settings = {
          update_in_insert = false;
        };
        sources = {
          completion = {
            luasnip.enable = true;
          };
        };
      };
    };
  };
}
