#!/bin/bash
cp vimrc ~/.vimrc
cp git-completion.bash ~/.git-completion.bash
cp git-prompt.sh ~/.git-prompt.sh
cp -r vim ~/.vim

sudo apt-get install libevent-dev ncurses-dev build-essential bison pkg-config
if [ -d ~/version-control ];
then
	git clone https//github.com/tmux/tmux.git ~/version-control/
	git --git-dir=$HOME/version-control/tmux/.git --work-tree=$HOME/version-control/tmux checkout 3.0
	sh ~/version-control/tmux/autogen.sh
	~/version-control/configure && make
	sudo make install
else
	mkdir ~/version-control/		
	git clone https//github.com/tmux/tmux.git ~/version-control/
	git --git-dir=$HOME/version-control/tmux/.git --work-tree=$HOME/version-control/tmux checkout 3.0
	sh ~/version-control/tmux/autogen.sh
	~/version-control/configure && make
	sudo make install

cp tmux.conf ~/.tmux.conf

cp bash_alias_list ~/.bash_alias_list
cp bashrc ~/.bashrc

