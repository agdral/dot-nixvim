{
  description = "Nixvim Config";

  inputs = {
    nixpkgs.url = "https://flakehub.com/f/NixOS/nixpkgs/0.1";
  };

  outputs = {
    self,
    nixpkgs,
    ...
  }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      system = system;
    };
  in {
    nixosModules.default = import ./default.nix;
    packages.${system}.default = pkgs.writeText "dummy" "Nixvim Config: only módules";
  };
}
