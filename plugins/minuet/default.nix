{
  plugins = {
    minuet = {
      enable = true;
      settings = {
        provider = "openai_compatible";
        provider_options = {
          openai_compatible = {
            end_point = "https://api.deepseek.com/chat/completions";
            api_key = "DEEPSEEK_API_KEY";
            name = "deepseek";
            optional = {
              max_tokens = 256;
              top_p = 0.9;
            };
          };
        };
      };
    };
  };
}
