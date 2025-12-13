{
  imports = [
    ./keymaps.nix
  ];
  
  plugins = {
    barbar = {
      enable = true;
      settings = {
        maximum_padding = 1;
        maximum_length = 20;
      };
    };
  };
}
