{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_plugins;
in {
  config = mkIf cfg.luasnip {
    plugins = {
      luasnip = {
        enable = true;
        settings = {
          enable_autosnippets = true;
          store_selection_keys = "<Tab>";
        };
      };
    };
  };
}
