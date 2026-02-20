{
  lib,
  import-tree,
  ...
}: {
  programs.nixvim = {
    enable = lib.mkDefault true;
    imports = [
      ./config.nix
      ./sets.nix

      (import-tree ./keymaps)
    ];
  };
}
