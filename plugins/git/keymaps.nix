{
  keymaps = [
    {
      mode = "n";
      key = "<leader>g";
      action = "Git Actions";
    }
    {
      mode = "n";
      key = "<leader>gd";
      action = "<cmd>lua require('gitsigns').diffthis()<CR>";
      options.desc = "Git Diff";
    }
    {
      mode = "n";
      key = "<leader>gn";
      action = "<cmd>Neogit<CR>";
      options.desc = "Git Neo";
    }
    {
      mode = "n";
      key = "<leader>gr";
      action = "<cmd>lua require('gitsigns').refresh()<CR>";
      options.desc = "Git Refresh";
    }
    {
      mode = "n";
      key = "<leader>gb";
      action = "<cmd>lua require('gitsigns').blame_line()<CR>";
      options.desc = "Git Blame";
    }
  ];
}
