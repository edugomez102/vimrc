# 😎My vim config😎

![exit vim](nojoke.png)

Currently using nvim on Windows 10 😞💔

## Installation

    cd ~
    git clone https://github.com/edugomez102/vimrc
    mv vimrc .vim && cd .vim
    mkdir undo-dir sessions
    vim -c VimscriptPlugins -c qa

or just clone the repo and run `vimrc/install.sh`

then open vim and run `:PlugInstall` if you want to install non-vimscript
plugins  
note that some of them require dependencies

### My recommendation for LSP autocompletition

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

## Upgraded syntax highlighting

### Works for the colorscheme I use: codedark(vscode based)

- C++
- Python
- C#
- C
- Java

actually I have just added some lines to the after/ftplugin files but idk

