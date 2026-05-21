{
  plugins.lsp.servers.tailwindcss = {
    # se debe instalar en el proyecto: npm install @tailwindcss/language-server
    enable = true;

    filetypes = [
      "html"
      "css"
      "scss"
      "javascript"
      "javascriptreact"
      "typescript"
      "typescriptreact"
      "svelte"
      "vue"
      "astro"
      "nunjucks"
      "twig"
    ];

    settings = {
      tailwindCSS = {
        # Para proyectos con configs no estándar
        experimental = {
          configFile = "./src/app/globals.css";
        };
      };
    };
  };

  plugins = {
    none-ls.sources.formatting = {
      rustywind.enable = true;
    };
  };
}
