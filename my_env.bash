#!/bin/bash
cp vimrc ~/.vimrc
cp git-completion.bash ~/.git-completion.bash
cp git-prompt.sh ~/.git-prompt.sh
cp -r vim ~/.vim

sudo apt-get install vim git tree libevent-dev ncurses-dev build-essential bison pkg-config

git config --global core.editor "vim"
git config --global user.name "iman-keangkasa"
git config --global user.email "hafiz.ghazman@gmail.com"

if [ -d $HOME/version-control ]
then
	echo "[TRUE] Debug here"
	git clone https://github.com/tmux/tmux.git ~/version-control
	git --git-dir=$HOME/version-control/tmux/.git --work-tree=$HOME/version-control/tmux checkout 3.1
	sh ~/version-control/tmux/autogen.sh
	~/version-control/configure && make
	sudo make install
else
	echo "[FALSE] Debug here"
	mkdir ~/version-control/		
	git clone https://github.com/tmux/tmux.git ~/version-control/
	git --git-dir=$HOME/version-control/tmux/.git --work-tree=$HOME/version-control/tmux checkout 3.1
	sh ~/version-control/tmux/autogen.sh
	~/version-control/configure && make
	sudo make install
fi

cp tmux.conf ~/.tmux.conf

cp bashrc_alias_list ~/.bash_alias_list
cp bashrc ~/.bashrc

