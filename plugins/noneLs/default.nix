{
  plugins = {
    none-ls = {
      enable = true;
      enableLspFormat = true;
      settings = {
        update_in_insert = false;
      };
      sources = {
        completion = {
          luasnip.enable = true;
        };
      };
    };
  };
}

