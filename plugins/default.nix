{
  imports = [
    ./autoSave
    ./codeCompanion
    ./git
    ./oil
    ./trouble
    ./luasnip
    ./noneLs
    ./minuet 
    ./cmp 
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
