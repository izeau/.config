.PHONY: all

all: \
	homebrew/Brewfile.lock.json \
	nvim/plugged

homebrew/Brewfile.lock.json: homebrew/Brewfile
	cd homebrew && brew bundle

nvim/autoload/plug.vim:
	curl -fLo $@ --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

nvim/plugged: homebrew/Brewfile.lock.json nvim/autoload/plug.vim nvim/plugins.vim
	nvim --headless +PlugInstall +qa
	touch $@
