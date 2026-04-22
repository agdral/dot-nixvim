{
  lib,
  import-tree,
  ...
}: {
  programs.nixvim = {
    enable = lib.mkDefault true;
    globals.deprecation_warnings = false;
    imports = [
      ./config.nix
      ./sets.nix

      (import-tree ./keymaps)
    ];
  };
}
