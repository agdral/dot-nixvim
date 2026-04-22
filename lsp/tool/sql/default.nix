{
  lsp.servers = {
    sqruff.enable = true;
  };
  plugins = {
    vim-dadbod.enable = true;
    none-ls.sources.formatting = {
      sqruff.enable = true;
    };
  };
}
