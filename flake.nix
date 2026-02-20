{
  description = "Dotfile Default";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    import-tree.url = "github:vic/import-tree";
  };

  outputs = {
    nixpkgs,
    import-tree,
    ...
  }: let
    lib = nixpkgs.lib;
  in {
    nixosModules.general = ./general;
    nixosModules.lsp = ./lsp;
    nixosModules.plugins = import-tree.filter (lib.hasSuffix "/default.nix") ./plugins;
    nixosModules.ui = import-tree.filter (lib.hasSuffix "/default.nix") ./ui;
  };
}
