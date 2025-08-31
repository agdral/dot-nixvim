{
  imports = [
    ./keymaps.nix
  ];

  plugins.codecompanion = {
    enable = true;
    settings = {
      adapters = {
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
      opts = {
        language = "Spanish";
      };
      strategies = {
        agent = {
          adapter = "deepseek";
        };
        chat = {
          adapter = "deepseek";
        };
        inline = {
          adapter = "deepseek";
        };
        cmd = {
          adapter = "deepseek";
        };
      };
    };
  };
}
