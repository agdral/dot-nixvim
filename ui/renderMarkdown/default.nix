{
  plugins = {
    render-markdown = {
      enable = true;
      luaConfig.post = ''
        file_types = { 'markdown', 'codecompanion' },
      '';
    };
  };
}
