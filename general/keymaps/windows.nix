{
  keymaps = [
    {
      mode = "n";
      key = "k";
      action = "<C-W>v";
      options = {
        silent = true;
        desc = "Split window horizontal";
      };
    }
    {
      mode = "n";
      key = "<C-k>";
      action = "<C-W>v";
      options = {
        silent = true;
        desc = "Split window vertical";
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

