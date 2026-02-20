{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_ui;
in {
  options.nvim_ui.renderMarkdown = mkOption {
    type = types.bool;
    default = false;
  };
  config = mkIf cfg.renderMarkdown {
    programs.nixvim.plugins = {
      render-markdown = {
        enable = true;
        luaConfig.post = ''
          require('render-markdown').setup({
            file_types = { 'markdown', 'codecompanion' },
          })
        '';
      };
    };
  };
}
