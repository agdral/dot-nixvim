{
  opts = {
    # Enable relative line numbers
    number = true;
    conceallevel = 2;
    relativenumber = true;
    autochdir = false;
    guifont = "JetBrainsMono Nerd Font:h12";

    # Set tabs to 2 spaces
    tabstop = 2;
    softtabstop = 0;
    expandtab = true;
    shiftwidth = 2;

    # Enable incremental searching
    hlsearch = true;
    incsearch = true;

    # Enable text wrap
    wrap = true;
    linebreak = true;
    breakindent = true;

    # Better splitting
    splitbelow = true;
    splitright = true;

    # Enable ignorecase + smartcase for better searching
    ignorecase = true;
    smartcase = true; 
    grepprg = "rg --vimgrep";
    grepformat = "%f:%l:%c:%m";

    # Decrease updatetime
    updatetime = 200; # faster completion (4000ms default)

    # Enable persistent undo history
    swapfile = false;
    backup = false;
    undofile = true;

    # Enable 24-bit colors
    termguicolors = true;

    # Enable cursor line highlight
    cursorline = true; 

    # Set fold settings
    foldcolumn = "0";
    foldlevel = 99;
    foldlevelstart = 99;
    foldenable = true;

    # Reduce which-key timeout to 10ms
    timeoutlen = 10;

    # Set encoding type
    encoding = "utf-8";
    fileencoding = "utf-8";
    
    # hide modes 
    cmdheight = 0;
    showmode = false;
  };
}
