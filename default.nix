{
  programs.nixvim = {
    enable = true;
    imports = [
      ./general
      ./lsp
      ./plugins
    ];
  };
}
