{
  imports = [
    ./keymaps.nix
  ];

  plugins = {
    diffview.enable = true;
    gitsigns.enable = true;
    neogit.enable = true;
  };
}
