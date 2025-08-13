{
  plugins = {
    lsp.servers = {
      # Nushell
      nushell.enable = true;
      # Docker
      dockerls.enable = true;
      # Bash
      bashls.enable = true;
      # Fish
      fish_lsp.enable = true;
      # Toml
      taplo.enable = true;
      # Json
      jsonls = {
        enable = true;
        filetypes = ["json" "jsonc"];
      };
      ansiblels.enable = true;
      # Nix
      nixd.enable = true;
      # Lua
      lua_ls.enable = true;
      # Markdown
      marksman.enable = true;
      # Sql
      sqls.enable = true;
      # Postgres
      postgres_lsp.enable = true;
      # Systemd
      systemd_ls.enable = true;
      # Typst
      tinymist.enable = true;
      # Vector Code
      vectorcode_server.enable = true;
      # Yaml
      yamlls.enable = true;
      # Math Lab
      matlab_ls.enable = true;
      # Latex
      texlab.enable = true;
      # Cmake
      neocmake.enable = true;
    };

    none-ls.sources.formatting = {
      # Nix
      alejandra.enable = true;
      # Yaml
      yamlfmt.enable = true;
      # Fish
      fish_indent.enable = true;
      # Bash
      shfmt.enable = true;
      # Just
      just.enable = true;
      # Lua
      stylua.enable = true;
    };
  };
}
