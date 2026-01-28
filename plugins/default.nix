{lib, ...}:
with lib; let
  mkBoolOption = desc:
    mkOption {
      type = types.bool;
      default = false;
      description = desc;
    };

  utils = import ../utils.nix;
in {
  imports = utils.importFoldersExcept ./. [];

  options.nvim_plugins = {
    apps = mkBoolOption "Enable apps default";
    autoSave = mkBoolOption "Enable autoSave";
    cmp = mkBoolOption "Enable cmp";
    codeCompanion = mkBoolOption "Enable codeCompanion";
    git = mkBoolOption "Enable git";
    luasnip = mkBoolOption "Enable luasnip";
    minuet = mkBoolOption "Enable minuet";
    noneLs = mkBoolOption "Enable noneLs";
    oil = mkBoolOption "Enable oil";
    trouble = mkBoolOption "Enable trouble";
    vectorCode = mkBoolOption "Enable ventorCode";
  };
}
