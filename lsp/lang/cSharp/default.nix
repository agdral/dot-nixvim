{pkgs-stable, ...}: {
  lsp.servers = {
    csharp_ls = {
      enable = true;
      package = pkgs-stable.csharp-ls;
    };
  };

  plugins = {
    none-ls.sources.formatting = {
      csharpier.enable = true;
    };
  };
}
