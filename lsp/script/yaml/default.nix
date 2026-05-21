{
  lsp.servers = {
    yamlls.enable = true;
  };

  plugins = {
    none-ls.sources.formatting = {
      yamlfmt.enable = true;
    };
  };

  filetype = {
    filename = {
      "docker-compose.yml" = "yaml.docker-compose";
      "docker-compose.yaml" = "yaml.docker-compose";
      "compose.yml" = "yaml.docker-compose";
      "compose.yaml" = "yaml.docker-compose";
    };
  };
}
