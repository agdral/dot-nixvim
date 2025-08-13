{
  plugins = {
    treesitter = {
      enable = true;
      folding = true;
      nixvimInjections = true;
      settings = {
        indent.enable = true;
        highlight.enable = true;
      };
    };
    treesitter-textobjects.enable = true;
    ts-context-commentstring.enable = true;
  };
}

