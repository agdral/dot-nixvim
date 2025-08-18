{
  plugins = {
    lsp.servers = {
      jsonls = {
        enable = true;
        filetypes = ["json" "jsonc"];
      };
    };

    # none-ls.sources.formatting = {
    # };
  };
}

