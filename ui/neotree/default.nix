{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_ui;
  keymapsF = import ./keymaps.nix;
in {
  options.nvim_ui.neotree = mkOption {
    type = types.bool;
    default = false;
  };
  config = mkIf cfg.neotree {
    programs.nixvim.keymaps = keymapsF;

    programs.nixvim.plugins.neo-tree = {
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
    };
  };
}
