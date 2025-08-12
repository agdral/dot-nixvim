{
  plugins.codecompanion = {
    enable = true;
    settings = {
      adapters = {
        ollama = {
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
      };
    };
  };
}
