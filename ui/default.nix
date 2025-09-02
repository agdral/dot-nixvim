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
    ./renderMarkdown
  ];

  plugins = {
    illuminate.enable = true;
    which-key.enable = true;
    indent-blankline.enable = true;
    markdown-preview.enable = true;
  };
}
