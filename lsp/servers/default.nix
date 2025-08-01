{
  plugins.lsp = {
    enable = true;
  };
  imports = [
    ./web.nix
    ./programs.nix
    ./shells.nix
  ];
}
