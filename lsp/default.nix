{...}: let
  utils = import ../utils.nix;
  folderImports =
    utils.importFoldersExcept ./. [];
in {
  imports = folderImports;
  plugins = {
    lsp.enable = true;
    lsp-format.enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>r";
      action = "<cmd>LspRestart<CR>";
      options.desc = "Lsp Restart";
    }
  ];
}
