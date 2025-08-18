{
  imports = [
    ./barbar
    ./lualine
    ./neotree
    ./notify
    ./telescope
    ./toggleterm
    ./colorizer
    ./treesitter
    ./webDevicons
  ];

  plugins = {
    illuminate.enable = true;
    which-key.enable = true;
    render-markdown.enable = true;
    indent-blankline.enable = true;
    markdown-preview.enable = true;
  };
}
