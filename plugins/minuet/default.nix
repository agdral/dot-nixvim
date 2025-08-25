{
  plugins = {
    minuet = {
      enable = true;
      settings = {
        provider = "deepseek";
        provider_options = {
          openai_compatible = {
            model = "deepseek-chat";
            api_key = "DEEPSEEK_API_KEY";
            end_point = "https://api.deepseek.com/beta/completions";
            name = "Deepseek";
            optional = {
              stop = null;
              max_tokens = null;
            };
            stream = true;
          };
        };
      };
    };
  };
}
