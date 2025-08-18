{
  plugins = {
    lsp.servers = {
      rust_analyzer = {
        enable = true;
        installCargo = false;
        installRustc = false;
      };
    };

    # none-ls.sources.formatting = {
    # };
  };
}


