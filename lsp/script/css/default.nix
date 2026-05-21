{
  lsp.servers = {
    # se debe instalar en el proyecto: npm install @tailwindcss/language-server
    tailwind.enable = true; 
  };
  plugins = {
    none-ls.sources.formatting = {
      rustywind.enable = true;
    };
  };
}
