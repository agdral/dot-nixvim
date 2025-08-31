{
  description = "Dotfile Default";

  outputs = {...}: {
    nixosModules.general = ./general;
    nixosModules.ui = ./ui;
    nixosModules.lsp = ./lsp;
    nixosModules.plugins = ./plugins;
  };
}
