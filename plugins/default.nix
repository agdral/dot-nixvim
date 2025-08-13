{
  imports = [
    ./autoSave
    ./barbar
    ./codeCompanion
    ./git
    ./lualine
    ./neotree
    ./oil
    ./telescope
    ./toggleterm
    ./treesitter
    ./webDevicons
  ];
  plugins = {
    dap.enable = true;
    illuminate.enable = true;
    comment.enable = true;
    nvim-autopairs.enable = true;
    which-key.enable = true;
    indent-blankline.enable = true;
    markdown-preview.enable = true;
    lastplace.enable = true;
    vim-suda.enable = true;
    render-markdown.enable = true;
  };
}
