{
  description = "Nixvim Config";

  inputs = {
    nixpkgs.url = "https://flakehub.com/f/NixOS/nixpkgs/0.1";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    nixvim,
    ...
  }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      system = system;
      config.allowUnfree = true;
    };
  in {
    nixosConfigurations = {
      "nixvim-config" = nixpkgs.lib.nixosSystem {
        system = system;
        modules = [
          nixvim.nixosModules.nixvim
        ];
        pkgs = pkgs;
      };
    };
    nixosModules.default = import ./default.nix;
    packages.${system}.default = pkgs.writeText "dummy" "Nixvim flake: solo módulos";
  };
}
