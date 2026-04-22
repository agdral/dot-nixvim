{
  lsp.servers = {
    kotlin_language_server.enable = true;
  };

  plugins = {
    none-ls.sources.formatting = {
      ktlint.enable = true;
    };
  };
}
