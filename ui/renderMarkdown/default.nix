{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_ui;
in {
  config = mkIf cfg.renderMarkdown {
    plugins = {
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
