{
  lsp.servers = {
    rust_analyzer = {
      enable = true;
      config = {
        installCargo = false;
        installRustc = false;
      };
    };
  };
}
