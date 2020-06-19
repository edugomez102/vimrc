![exit vim](nojoke.png)

# My vim config

## Installation

    cd ~
    git clone https://github.com/edugomez102/vimrc
    mv vimrc .vim && cd .vim
    mkdir undo-dir sessions

then open vim and run `:PlugInstall` to install all the plugins  
note that some of them require dependencies

My recommendation for LSP autocompletition:

1. run `:CocInstall coc-marketplace`
2. then run `:CocList marketplace`
3. search for the language you want coc.nvim to autocomplete!

## Top included plugins

- [coc.vim](https://github.com/neoclide/coc.nvim)
- [Ultisnips](https://github.com/SirVer/ultisnips)
- [lightline](https://github.com/itchyny/lightline.vim)
- [vim-clap](https://github.com/liuchengxu/vim-clap)
- [vim-surround](https://github.com/tpope/vim-surround)
- [tcomment_vim](https://github.com/tomtom/tcomment_vim)
- [vim-markology](https://github.com/jeetsukumaran/vim-markology)
- [omnisharp-vim](https://github.com/OmniSharp/omnisharp-vim)

## Upgraded syntax highlighting

Default colorscheme: codedark(vscode based)

- C++
- Python
- C#
- C
- Java

