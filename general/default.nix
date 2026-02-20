{import-tree, ...}: {
  program.nixvim = {
    imports = [
      ./config.nix
      ./sets.nix

      (import-tree ./keymaps)
    ];
  };
}
