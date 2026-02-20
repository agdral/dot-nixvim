{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_plugins;
in {
  options.nvim_plugins.luasnip = mkOption {
    type = types.bool;
    default = false;
  };
  config = mkIf cfg.luasnip {
    programs.nixvim.plugins = {
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
