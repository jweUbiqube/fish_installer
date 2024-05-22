#!/bin/bash

bash ./local/fish_installer/script/logo.sh

printf "\033[1;36m Copying files to $HOME/local/..."
cp -r local $HOME/.
printf "\033[32m Ok\033[0m\n"

printf "\033[1;36m Copying files to $HOME/.config..."
cp target/starship.toml $HOME/.config/starship.toml
cp -r fish $HOME/.config/fish
printf "\033[32m Ok\033[0m\n"

printf "\033[1;36m Installing fzf..."
git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf
$HOME/.fzf/install
printf "\033[32m Ok\033[0m\n"



printf "\033[1;36m Update PATH..."
echo "export PATH=\"\$PATH:\$HOME/local/bin:\$HOME/.fzf/bin\"" >> $HOME/.bashrc
echo "export SHELL=/usr/bin/bash" >> $HOME/.bashrc
source $HOME/.bashrc
printf "\033[32m Ok\033[0m\n"

printf "\033[1;36m Installing starship for bash..."
echo "source <(\$HOME/local/bin/starship init bash --print-full-init)" >> $HOME/.bashrc
printf "\033[32m Ok\033[0m\n"

printf "\033[1;36m Installing fastfetch..."
echo "fastfetch --config neofetch.jsonc" >> $HOME/.bashrc
printf "\033[32m Ok\033[0m\n"


fish ./local/fish_installer/script/plugin_install.fish

source $HOME/.bashrc

printf "\033[1;33m Done! Enjoy your new shell!\n\033[0m" 

fish