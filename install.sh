#!/bin/bash

# print this in color
# ███████╗██╗███████╗██╗  ██╗    ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ███████╗██████╗ 
# ██╔════╝██║██╔════╝██║  ██║    ██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██╔════╝██╔══██╗
# █████╗  ██║███████╗███████║    ██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     █████╗  ██████╔╝
# ██╔══╝  ██║╚════██║██╔══██║    ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██╔══╝  ██╔══██╗
# ██║     ██║███████║██║  ██║    ██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗███████╗██║  ██║
# ╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝    ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝

printf "\033[1;31m"
echo "███████╗██╗███████╗██╗  ██╗    ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ███████╗██████╗ "
echo "██╔════╝██║██╔════╝██║  ██║    ██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██╔════╝██╔══██╗"
echo "█████╗  ██║███████╗███████║    ██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     █████╗  ██████╔╝"
echo "██╔══╝  ██║╚════██║██╔══██║    ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██╔══╝  ██╔══██╗"
echo "██║     ██║███████║██║  ██║    ██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗███████╗██║  ██║"
echo "╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝    ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝"
printf "\033[0m\n\n"                                                                                 

printf "\033[1;34m Copying files to $HOME/local/bin..."
mkdir -p $HOME/local/bin
cp local/bin/* $HOME/local/bin
printf "\033[32m Ok\033[0m\n"

printf "\033[1;34m Copying files to $HOME/.config..."
cp target/starship.toml $HOME/.config/starship.toml
cp -r fish $HOME/.config/fish
printf "\033[32m Ok\033[0m\n"

printf "\033[1;34m Update PATH..."
echo "export PATH=$HOME/local/bin:$PATH" >> $HOME/.bashrc
printf "\033[32m Ok\033[0m\n"

printf "\033[1;34m Installing starship for bash..."
echo "if status --is-interactive" >> $HOME/.bashrc
echo "  source (starship init fish --print-full-init | psub)" >> $HOME/.bashrc
echo "end" >> $HOME/.bashrc
printf "\033[32m Ok\033[0m\n"

printf "\033[1;34m Installing fastfetch..."
echo "if status --is-interactive && type -q fastfetch" >> $HOME/.bashrc
echo "  fastfetch --config neofetch.jsonc" >> $HOME/.bashrc
echo "end" >> $HOME/.bashrc
printf "\033[32m Ok\033[0m\n"


printf "\033[1;34m Installing fish shell plugins..."
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install PatrickF1/fzf.fish
fisher install dracula/fish
fish_config theme choose "Dracula Official"
printf "\033[32m Ok\033[0m\n"


printf "\033[1;34m Launching fish shell...\n\033[0m"
fish