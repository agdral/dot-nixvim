{
  plugins = {
    treesitter = {
      enable = true;
      folding.enable = true;
      nixvimInjections = true;
      settings = {
        indent.enable = true;
      };
    };
    treesitter-textobjects.enable = true;
    ts-context-commentstring.enable = true;
  };
}

