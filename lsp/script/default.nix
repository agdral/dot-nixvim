{...}: let
  utils = import ../../utils.nix;
  folderImports =
    utils.importFoldersExcept ./. [
      "ansible"
    ];
in {
  imports = folderImports;
}
