{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_ui;
in {
  options.nvim_ui.treesitter = mkOption {
    type = types.bool;
    default = false;
  };
  config = mkIf cfg.treesitter {
    programs.nixvim.plugins = {
      treesitter = {
        enable = true;
        folding.enable = true;
        nixvimInjections = true;
        settings = {
          indent.enable = true;
        };
      };
      treesitter-textobjects.enable = true;
      ts-context-commentstring.enable = true;
    };
  };
}
