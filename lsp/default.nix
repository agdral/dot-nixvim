{
  import-tree,
  ...
}: {
  programs.nixvim = {
    imports = [
      (import-tree ./lang)
      (import-tree ./script)
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
