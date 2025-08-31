{
  keymaps = [
    {
      mode = "n";
      key = "<leader>n";
      action = "<cmd>nohlsearch<CR>";
      options.desc = "Remove Highlight";
    }
    {
      mode = "n";
      key = "l";
      action = "<cmd>Format<CR>";
      options.desc = "Format NeoVim";
    }
    {
      mode = "n";
      key = "j";
      action = "<cmd>q<CR>";
      options.desc = "Quit NeoVim";
    }
    {
      mode = "n";
      key = "t";
      action = "<cmd>red<CR>";
      options.desc = "Redo";
    }
  ];
}
