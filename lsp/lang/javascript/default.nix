{pkgs, ...}: {
  plugins = {
    lsp.servers = {
      biome = {
        enable = true;
        filetypes = ["javascript" "javascriptreact" "typescript" "typescript.tsx" "typescriptreact" "graphql"];
      };
    };

    none-ls.sources.formatting = {
      prettier = {
        enable = true;
        packages = pkgs.prettier;
        disableTsServerFormatter = false;
      };
    };
  };
}
