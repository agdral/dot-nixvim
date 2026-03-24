{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.nvim_ui;
in {
  options.nvim_ui.apps = mkEnableOption "apps";
  config = mkIf cfg.apps {
    programs.nixvim.plugins = {
      which-key.enable = true;
      indent-blankline.enable = true;
      markdown-preview.enable = true;
    };
  };
}
