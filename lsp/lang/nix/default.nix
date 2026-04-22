{
  lsp.servers = {
    nixd.enable = true;
  };
  plugins = {
    none-ls.sources.formatting = {
      alejandra.enable = true;
    };
  };
}
