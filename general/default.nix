{
  lib,
  import-tree,
  pkgs-stable,
  ...
}: {
  programs.nixvim = {
    enable = lib.mkDefault true;
    extraConfigLua = ''
      vim.deprecate = function() end
    '';
    _module.args = {inherit pkgs-stable;};
    imports = [
      ./config.nix
      ./sets.nix

      (import-tree ./keymaps)
    ];
  };
}
