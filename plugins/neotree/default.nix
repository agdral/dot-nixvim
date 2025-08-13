{
  plugins.neo-tree = {
    enable = true;
    enableDiagnostics = true;
    enableGitStatus = true;
    enableModifiedMarkers = true;
    enableRefreshOnWrite = true;
    hideRootNode = true;
    closeIfLastWindow = true;
    popupBorderStyle = "rounded";
    buffers = {
      bindToCwd = false;
      followCurrentFile = {
        enabled = true;
      };
    };
    window = {
      width = 25;
      height = 15;
      autoExpandWidth = false;
      mappings = {
        "<space>" = "none";
      };
    };
    filesystem = {
      hijackNetrwBehavior = "open_default";
      filteredItems = {
        hideDotfiles = true;
        alwaysShow = [
          ".gitignore"
          ".env"
          ".env-example"
          ".ccls"
          ".justfile"
          ".envrc"
          ".pio"
        ];
        showHiddenCount = false;
      };
    };
  };
}
