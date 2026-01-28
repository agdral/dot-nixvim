{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_plugins;
in {
  config = mkIf cfg.minuet {
    plugins = {
      minuet = {
        enable = true;
        settings = {
          provider = "openai_fim_compatible";
          provider_options = {
            openai_fim_compatible = {
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
  };
}
