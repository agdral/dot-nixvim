{
  lib,
  import-tree,
  ...
}: {
  programs.nixvim = {
    enable = lib.mkDefault true;
    extraConfigLua = ''
      vim.deprecate = function() end
    '';
    imports = [
      ./config.nix
      ./sets.nix

      (import-tree ./keymaps)
    ];
  };
}
