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

  options.nvim_ui = {
    apps = mkBoolOption "Enable apps default";
    barbar = mkBoolOption "Enable barbar";
    colorizer = mkBoolOption "Enable colorizer";
    lualine = mkBoolOption "Enable lualine";
    neotree = mkBoolOption "Enable neotree";
    notify = mkBoolOption "Enable notify";
    renderMarkdown = mkBoolOption "Enable renderMarkdown";
    telescope = mkBoolOption "Enable telescope";
    toggleterm = mkBoolOption "Enable toggleterm";
    treesitter = mkBoolOption "Enable treesitter";
    webDevIcons = mkBoolOption "Enable webDevIcons";
  };
}
