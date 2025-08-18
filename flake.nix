{
  description = "Dotfile Default";

  outputs = {...}: {
    nixosModules.default = {...}: {
      programs.nixvim = {
        enable = true;
        imports = [
          ./general
          ./lsp
          ./plugins
          ./ui
        ];
      };
    };
  };
}
