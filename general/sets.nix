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

  clipboard = {
    register = "unnamedplus";
    providers.wl-copy.enable = true;
  };

  globals = {
    mapleader = " ";
    maplocalleader = ";";
  };
}
