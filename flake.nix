{
  description = "Dotfile Default";

  outputs = {...}: {
    nixosModules.default = {...}: {
      programs.nixvim = {
        enable = true;
        imports = [
          ./general
          ./ui
          ./lsp
          ./plugins
        ];
      };
    };
  };
}
