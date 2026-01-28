{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_plugins;
in {
  config = mkIf cfg.noneLs {
    plugins = {
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
