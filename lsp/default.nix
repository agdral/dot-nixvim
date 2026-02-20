{
  lib,
  import-tree,
  ...
}: {
  program.nixvim = {
    imports = [
      (import-tree ./lang)
      (import-tree.filterNot (p: lib.any (s: lib.hasInfix s p) ["/ansible/"]) ./script)
      (import-tree ./tool)
    ];

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
  };
}
