{
  imports = [
    ./trouble.nix
    ./servers
    ./cmp.nix
  ];

  plugins = {
    friendly-snippets.enable = true;
    luasnip = {
      enable = true;
      settings = {
        enable_autosnippets = true;
        store_selection_keys = "<Tab>";
      };
    };
    fidget.enable = true;
    lsp-format.enable = true;
    none-ls = {
      enable = true;
      enableLspFormat = true;
      settings = {
        updateInInsert = false;
      };
      sources = {
        completion = {
          luasnip.enable = true;
          vsnip.enable = true;
        };
      };
    };
  };
}
