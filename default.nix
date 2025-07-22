{
  programs.nixvim = {
    enable = true;
    imports = [
      ./config.nix
      ./keymaps.nix
      ./colorschema.nix
      ./lsp
      ./plugins
    ];
  };
}
