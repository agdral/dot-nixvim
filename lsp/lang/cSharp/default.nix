{
  lsp.servers = {
    csharp_ls.enable = true;
  };

  plugins = {
    none-ls.sources.formatting = {
      csharpier.enable = true;
    };
  };
}
