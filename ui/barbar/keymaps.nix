{
  keymaps = [
    {
      mode = "n";
      key = "<D-g>";
      action = "<cmd>BufferPrevious<cr>";
    }
    {
      mode = "n";
      key = "<D-h>";
      action = "<cmd>BufferNext<cr>";
    }
    {
      mode = "n";
      key = "<C-PageUp>";
      action = "<cmd>BufferPrevious<cr>";
    }
    {
      mode = "n";
      key = "<C-PageDown>";
      action = "<cmd>BufferNext<cr>";
    }
    {
      mode = "n";
      key = "<A-<>";
      action = "<cmd>BufferMovePrevious<cr>";
    }
    {
      mode = "n";
      key = "<A->>";
      action = "<cmd>BufferMoveNext<cr>";
    }
    {
      mode = "n";
      key = "<A-1>";
      action = "<cmd>BufferGoto 1<cr>";
    }
    {
      mode = "n";
      key = "<A-2>";
      action = "<cmd>BufferGoto 2<cr>";
    }
    {
      mode = "n";
      key = "<A-3>";
      action = "<cmd>BufferGoto 3<cr>";
    }
    {
      mode = "n";
      key = "<A-4>";
      action = "<cmd>BufferGoto 4<cr>";
    }
    {
      mode = "n";
      key = "<A-5>";
      action = "<cmd>BufferGoto 5<cr>";
    }
    {
      mode = "n";
      key = "<A-6>";
      action = "<cmd>BufferGoto 6<cr>";
    }
    {
      mode = "n";
      key = "<A-7>";
      action = "<cmd>BufferGoto 7<cr>";
    }
    {
      mode = "n";
      key = "<A-8>";
      action = "<cmd>BufferGoto 8<cr>";
    }
    {
      mode = "n";
      key = "<A-9>";
      action = "<cmd>BufferGoto 9<cr>";
    }
    {
      mode = "n";
      key = "<A-0>";
      action = "<cmd>BufferLast<cr>";
    }
    {
      mode = "n";
      key = "<A-'>";
      action = "<cmd>BufferPin<cr>";
    }
    {
      mode = "n";
      key = "<A-t>";
      action = "<cmd>BufferClose<cr>";
    }
    {
      mode = "n";
      key = "<A-h>";
      action = "<cmd>BufferCloseBuffersRight<cr>";
    }
    {
      mode = "n";
      key = "<A-c>";
      action = "<cmd>BufferCloseBuffersLeft<cr>";
    }
    {
      mode = "n";
      key = "<A-n>";
      action = "<cmd>BufferCloseAllButCurrent<cr>";
    }
    {
      mode = "n";
      key = "<A-s>";
      action = "<cmd>BufferCloseAllButPinned<cr>";
    }
    {
      mode = "n";
      key = "<A-r>";
      action = "<cmd>BufferRestore<cr>";
    }
    {
      mode = "n";
      key = "<leader>b";
      action = "Buffer Actions";
    }
    {
      mode = "n";
      key = "<leader>bb";
      action = "<cmd>BufferOrderByBufferNumber<cr>";
      options = {
        desc = "Order By Buffer Number";
      };
    }
    {
      mode = "n";
      key = "<leader>bn";
      action = "<cmd>BufferOrderByName<cr>";
      options = {
        desc = "Order By Name";
      };
    }
    {
      mode = "n";
      key = "<leader>bd";
      action = "<cmd>BufferOrderByDirectory<cr>";
      options = {
        desc = "Order By Directory";
      };
    }
    {
      mode = "n";
      key = "<leader>bl";
      action = "<cmd>BufferOrderByLanguage<cr>";
      options = {
        desc = "Order By Language";
      };
    }
  ];
}
