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
      key = "<S-j>";
      action = "<cmd>qa<CR>";
      options.desc = "Quit All NeoVim";
    }
    {
      mode = "n";
      key = "t";
      action = "<cmd>red<CR>";
      options.desc = "Redo";
    }
    {
      mode = "n";
      key = "<leader>t";
      action = "<cmd>FormatToggle<CR>";
      options.desc = "Format Toogle";
    }
    {
      mode = "n";
      key = "h";
      action = "<cmd>Neotree toggle<CR>";
      options.desc = "Toggle Neo Tree";
    }
    {
      mode = "n";
      key = "<leader>r";
      action = "<cmd>LspRestart<CR>";
      options.desc = "Lsp Restart";
    }
    # Windows
    {
      mode = "n";
      key = "k";
      action = "<C-W>v";
      options = {
        silent = true;
        desc = "Split window right";
      };
    }
    {
      mode = "n";
      key = "<C-Left>";
      action = "<C-W>h";
      options = {
        silent = true;
        desc = "Move to window left";
      };
    }
    {
      mode = "n";
      key = "<C-Right>";
      action = "<C-W>l";
      options = {
        silent = true;
        desc = "Move to window right";
      };
    }
    {
      mode = "n";
      key = "<C-Up>";
      action = "<C-W>k";
      options = {
        silent = true;
        desc = "Move to window over";
      };
    }
    {
      mode = "n";
      key = "<C-Down>";
      action = "<C-W>j";
      options = {
        silent = true;
        desc = "Move to window bellow";
      };
    }
  ];
}
