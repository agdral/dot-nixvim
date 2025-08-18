{
  imports = [
    ./autoSave
    ./codeCompanion
    ./git
    ./oil
    ./trouble
    ./cmp
    ./luasnip
    ./noneLs
  ];
  plugins = {
    fidget.enable = true;
    dap.enable = true;
    comment.enable = true;
    nvim-autopairs.enable = true;
    lastplace.enable = true;
    vim-suda.enable = true;
  };
}
