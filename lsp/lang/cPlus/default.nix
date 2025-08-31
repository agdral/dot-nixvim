{
  plugins = {
    lsp.servers = {
      ccls = {
        enable = true;
        initOptions.clang.extraArgs = ["-Wno-attributes"];
      };
    };

    none-ls.sources.formatting = {
      clang_format.enable = true;
    };
  };
}


