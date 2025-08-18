{
  imports = [
    ./keymaps.nix
  ];

  plugins.trouble = {
    enable = true;
    settings = {
      auto_close = true;
    };
  };
}

