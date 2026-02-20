{
  lib,
  import-tree,
  ...
}: {
  program.nixvim = {
    enable = lib.mkDefault true;
    imports = [
      ./config.nix
      ./sets.nix

      (import-tree ./keymaps)
    ];
  };
}
