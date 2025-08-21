{
  imports = [
    ./keymaps.nix
  ];
  
  plugins = {
    barbar = {
      enable = true;
      settings = {
        maximumPadding = 1;
        maximumLength = 20;
      };
    };
  };
}
