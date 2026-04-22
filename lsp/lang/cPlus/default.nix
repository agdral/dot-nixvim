{
  lsp.servers = {
    ccls = {
      enable = true;
      config = {
        initOptions.clang.extraArgs = ["-Wno-attributes"];
      };
    };
  };

  plugins = {
    none-ls.sources.formatting = {
      clang_format.enable = true;
    };
  };
}
