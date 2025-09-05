{...}: let
  utils = import ../utils.nix;
  folderImports = utils.importFoldersExcept ./. [
    "vectorCode"
    "blink"
  ];
in {
  imports = folderImports;
  plugins = {
    fidget.enable = true;
    dap.enable = true;
    comment.enable = true;
    nvim-autopairs.enable = true;
    lastplace.enable = true;
    vim-suda.enable = true;
  };
}
