{
  colorschemes = {
    tokyonight = {
      enable = true;
      settings.style = "night";
    };
  };

  extraConfigLuaPre = ''
    vim.g.neovide_cursor_vfx_mode = "railgun"
    vim.g.neovide_cursor_vfx_particle_density = 11.0
    vim.g.neovide_cursor_vfx_particle_phase = 1.0
  '';

  plugins = {
    treesitter = {
      enable = true;
      folding = true;
      nixvimInjections = true;
      settings = {
        indent.enable = true;
        highlight.enable = true;
      };
    };
    treesitter-textobjects.enable = true;
    ts-context-commentstring.enable = true;
    colorizer = {
      enable = true;
      settings = {
        user_default_options = {
          names = false;
        };
      };
    };
    web-devicons = {
      enable = true;
      settings = {
        override_by_filename = {
          ".envrc" = {
            icon = "";
            color = "#f1502f";
            name = "Envrc";
          };
          ".ccls" = {
            icon = "󰬊";
            color = "#f1502f";
            name = "Ccls";
          };
          ".stignore" = {
            icon = "󰘿";
            color = "#f1502f";
            name = "Stignore";
          };
        };
        override_by_extension = {
          "norg" = {
            icon = "";
            color = "#f1502f";
            name = "Norg";
          };
        };
      };
    };
    notify = {
      enable = true;
      settings = {backgroundColour = "#000000";};
    };
  };
}
