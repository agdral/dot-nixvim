{
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
}
