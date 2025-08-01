{
  plugins.lsp = {
    enable = true;
  };
  import = [
    ./web.nix
    ./programs.nix
    ./shells.nix
  ];
}
