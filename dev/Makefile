.PHONY: help

help:
		@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


all_cp_dotfiles: ## copy all dotfiles to this repository
		cp ~/.vimrc ../
		cp ~/.bashrc ../
		cp ~/.bash_profile ../
		cp ~/.zshrc ../
		cp ~/.hgrc ../
		cp ~/.gitconfig ../
		cp ~/.gitignore_global ../

cp_zshrc: ## copy only .zshrc
		cp ~/.zshrc ../
