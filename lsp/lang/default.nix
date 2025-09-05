{...}: let
  utils = import ../../utils.nix;
  folderImports = utils.importFoldersExcept ./. [
    "vectorCode"
  ];
in {
  imports = folderImports;
}
