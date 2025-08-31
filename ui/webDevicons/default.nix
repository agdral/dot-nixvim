{
  plugins = {
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
  };
}

