{
  lsp.servers = {
    yamlls.enable = true;
  };
  plugins = {
    none-ls.sources.formatting = {
      yamlfmt.enable = true;
    };
  };
}
