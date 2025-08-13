{
  plugins = {
    lualine = {
      enable = true;
      settings = {
        options = {
          globalstatus = true;
          ignore_focus = [
            "neo-tree"
            "nvim-tree"
          ];
        };
      };
    };
  };
}
