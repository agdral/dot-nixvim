{import-tree, ...}: {
  imports = [
    ./config.nix
    ./sets.nix

    (import-tree ./keymaps)
  ];
}
