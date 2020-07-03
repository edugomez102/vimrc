#!/bin/bash

cd ~
mv vimrc .vim && cd .vim
mkdir undor-dir sessions
vim -c VimscriptPlugins -c qa

