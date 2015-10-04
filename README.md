Dot Files
=====

Installation
============
    $ git clone --recursive https://github.com/khaledez/dotfiles.git ~/.dotfiles

VIM
============
    $ ln -s ~/.dotfiles/vim ~/.vim
    $ ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
    $ vim +PluginInstall +qall

Inside Vim:

    :PluginInstall

To update plugins:

    :PluginUpdate

Clean plugins:

    :PluginClean
