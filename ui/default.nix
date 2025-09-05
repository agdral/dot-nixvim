{...}: let
  utils = import ../../utils.nix;
  folderImports =
    utils.importFoldersExcept ./. [];
in {
  imports = folderImports;
  plugins = {
    illuminate.enable = true;
    which-key.enable = true;
    indent-blankline.enable = true;
    markdown-preview.enable = true;
  };
}
