{
  description = "Dotfile Default";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    import-tree.url = "github:vic/import-tree";
  };

  outputs = {
    nixpkgs,
    import-tree,
    nixvim,
    ...
  }: let
    lib = nixpkgs.lib;
  in {
    nixosModules.general = {
      imports = [
        nixvim.nixosModules.nixvim
        ./general
      ];
    };
    nixosModules.lsp = ./lsp;
    nixosModules.plugins = import-tree.filter (lib.hasSuffix "/default.nix") ./plugins;
    nixosModules.ui = import-tree.filter (lib.hasSuffix "/default.nix") ./ui;
  };
}
