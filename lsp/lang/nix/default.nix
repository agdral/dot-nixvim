{
  plugins = {
    lsp.servers = {
      nixd.enable = true;
    };

    none-ls.sources.formatting = {
      alejandra.enable = true;
    };
  };
}

