{
  plugins = {
    none-ls = {
      enable = true;
      enableLspFormat = true;
      settings = {
        updateInInsert = false;
      };
      sources = {
        completion = {
          luasnip.enable = true;
        };
      };
    };
  };
}

