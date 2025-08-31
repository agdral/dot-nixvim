{
  imports = [
    ./keymaps.nix
  ];

  plugins.telescope = {
    enable = true;
    settings.defaults = {
      file_ignore_patterns = [
        "^.git/"
        "^output/"
        "^target/"
      ];
    };
  };
}
