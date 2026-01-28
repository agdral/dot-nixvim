{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_ui;
in {
  config = mkIf cfg.apps {
    plugins = {
      illuminate.enable = true;
      which-key.enable = true;
      indent-blankline.enable = true;
      markdown-preview.enable = true;
    };
  };
}
