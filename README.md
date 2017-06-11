Install
=======

To install this:

    cd
    git clone git@github.com:rgooler/.vim 
    ln -s ~/.vim/.vimrc ~/.vimrc 
    cd .vim
    git submodule update --init --recursive
    pip install flake8


To keep it updated:

    cd ~/.vim
    git submodule update --init --recursive
    git submodule foreach git pull origin master
