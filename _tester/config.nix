{
  self,
  lib,
  inputs,
  ...
}: let
  system = "x86_64-linux";
  pkgs-stable = import inputs.nixstable {
    inherit system;
    config.allowUnfree = true;
  };
in {
  tester = lib.nixosSystem {
    inherit system;
    specialArgs = {inherit pkgs-stable;};

    modules = [
      {
        nixpkgs.config.allowUnfree = true;
        boot.loader.grub.enable = false;
        fileSystems."/" = {
          device = "/dev/null";
          fsType = "ext4";
        };
        system.stateVersion = "26.05";

        imports = [
          self.nixosModules.default
        ];
      }
    ];
  };
}
