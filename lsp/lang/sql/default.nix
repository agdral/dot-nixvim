{
  lsp.servers = {
    sqls.enable = true;
  };
  plugins = {
    none-ls.sources.formatting = {
      sqlfluff.enable = true;
    };
  };
}
