{
  imports = [
    ./keymaps.nix
  ];

  plugins.neo-tree = {
    enable = true;
    settings = {
      enable_diagnostics = true;
      close_if_last_window = true;
      enable_git_status = true;
      popup_border_style = "rounded";
      hide_root_node = true;
      enable_modified_markers = true;
      enable_refresh_on_write = true;


      buffers = {
        bind_to_cwd = false;
        follow_current_file = {
          enabled = true;
        };
      };
      window = {
        width = 25;
        height = 15;
        auto_expand_width = false;
        mappings = {
          "<space>" = "none";
        };
      };
      filesystem = {
        hijack_netrw_behavior = "open_default";
        filtered_items = {
          hide_dotfiles = true;
          always_show = [
            ".gitignore"
            ".env"
            ".env-example"
            ".ccls"
            ".justfile"
            ".envrc"
            ".pio"
          ];
          show_hidden_count = false;
        };
      };
    };

    luaConfig = ''
      event_handlers = {
            {
              event = "neo_tree_buffer_enter",
              handler = function()
                -- This effectively hides the cursor
                vim.cmd 'highlight! Cursor blend=100'
              end
            },
            {
              event = "neo_tree_buffer_leave",
              handler = function()
                -- Make this whatever your current Cursor highlight group is.
                vim.cmd 'highlight! Cursor guibg=#5f87af blend=0'
              end
            }
          },
    '';
  };
}
