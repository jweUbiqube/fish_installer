#!/bin/bash

printf "\033[1;31m"
echo "███████╗██╗███████╗██╗  ██╗    ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ███████╗██████╗ "
echo "██╔════╝██║██╔════╝██║  ██║    ██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██╔════╝██╔══██╗"
echo "█████╗  ██║███████╗███████║    ██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     █████╗  ██████╔╝"
echo "██╔══╝  ██║╚════██║██╔══██║    ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██╔══╝  ██╔══██╗"
echo "██║     ██║███████║██║  ██║    ██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗███████╗██║  ██║"
echo "╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝    ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝"
printf "\033[0m\n\n"                                                                                 

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
source $HOME/.bashrc
printf "\033[32m Ok\033[0m\n"

printf "\033[1;36m Installing starship for bash..."
echo "if status --is-interactive" >> $HOME/.bashrc
echo -e "\tsource <("$HOME/local/bin/starship" init bash --print-full-init)" >> $HOME/.bashrc
echo "end" >> $HOME/.bashrc
printf "\033[32m Ok\033[0m\n"

printf "\033[1;36m Installing fastfetch..."
echo "if status --is-interactive && type -q fastfetch" >> $HOME/.bashrc
echo -e "\tfastfetch --config neofetch.jsonc" >> $HOME/.bashrc
echo "end" >> $HOME/.bashrc
printf "\033[32m Ok\033[0m\n"


fish plugin_install.fish

printf "\033[1;33m Done! Enjoy your new shell!\n\033[0m" 

fish