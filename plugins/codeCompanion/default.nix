{
  imports = [
    ./keymaps.nix
  ];

  plugins.codecompanion = {
    enable = true;
    settings = {
      http.adapters = {
        deepseek = {
          __raw = ''
            function()
              return require('codecompanion.adapters').extend('deepseek', {
                env = {
                    api_key = vim.env.DEEPSEEK_API_KEY,
                },
                schema = {
                  model = {
                    default = "deepseek-chat",
                  },
                  temperature = {
                    default = 0.4,
                  },
                },
              })
            end
          '';
        };
      };
      http.opts = {
        language = "Spanish";
      };
      strategies = {
        agent = {
          adapter = "deepseek";
          model = "deepseek-chat";
        };
        chat = {
          adapter = "deepseek";
          model = "deepseek-chat";
        };
        inline = {
          adapter = "deepseek";
          model = "deepseek-chat";
        };
        cmd = {
          adapter = "deepseek";
          model = "deepseek-chat";
        };
      };
    };
  };
}
