{
  lsp.servers = {
    gopls.enable = true;
  };
  plugins = {
    none-ls.sources.formatting = {
      golines.enable = true;
    };
  };
  filetype = {
    extension = {
      gotmpl = "gotmpl";
    };
  };
}
