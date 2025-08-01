{
  plugins = {
    lsp.servers = {
      # Astro
      astro.enable = true;
      biome = {
        enable = true;
        filetypes = ["javascript" "javascriptreact" "typescript" "typescript.tsx" "typescriptreact" "graphql"];
      };
      # Tailwindcss
      tailwindcss.enable = true;
      # Html
      html.enable = true;
      htmx.enable = true;
      # Emmet
      emmet_language_server.enable = true;
    };

    none-ls.sources.formatting = {
      # HTML
      htmlbeautifier.enable = true;
      # JavaScript + React/ TypeScript + React
      prettier = {
        enable = true;
        disableTsServerFormatter = false;
      };
      # Css
      rustywind.enable = true;
    };
  };
}
