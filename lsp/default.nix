{
  imports = [
    ./lang
    ./shell
    ./web
  ];

  plugins = {
    lsp.enable = true;
    lsp-format.enable = true;
  };
}
