#!/bin/bash

bash $HOME/local/fish_installer/script/logo.sh

# message de au revoir (bye bye)
printf "\033[1;33m Oh no! You're leaving us? 😢\n\033[0m"

printf "\033[1;36m Removing files from $HOME/.config..."
rm $HOME/.config/starship.toml
rm -rf $HOME/.config/fish
printf "\033[32m Ok\033[0m\n"

printf "\033[1;36m Removing fzf..."
rm -rf $HOME/.fzf $HOME/.fzf.bash $HOME/.fzf.zsh
printf "\033[32m Ok\033[0m\n"

# suppression des lignes dans le fichier .bashrc
printf "\033[1;36m Update PATH..."
sed -i '/export PATH="\$PATH:\$HOME\/local\/bin:\$HOME\/.fzf\/bin"/d' $HOME/.bashrc
printf "\033[32m Ok\033[0m\n"

printf "\033[1;36m Removing starship for bash..."
sed -i '/source <($HOME\/local\/bin\/starship init bash --print-full-init)/d' $HOME/.bashrc
sed -i '\|source <('"$HOME"'/local/bin/starship init bash --print-full-init)|d' ~/.bashrc
printf "\033[32m Ok\033[0m\n"

printf "\033[1;36m Removing fastfetch..."
sed -i '/fastfetch --config neofetch.jsonc/d' $HOME/.bashrc
printf "\033[32m Ok\033[0m\n"

# [ -f ~/.fzf.bash ] && source ~/.fzf.bash
printf "\033[1;36m Removing fzf for bash..."
sed -i '/[ -f ~\/.fzf.bash ] && source ~\/.fzf.bash/d' $HOME/.bashrc
printf "\033[32m Ok\033[0m\n"

source $HOME/.bashrc

# suppression des fichiers
printf "\033[1;36m Removing files from $HOME/local/..."
rm -rf - $HOME/local
printf "\033[32m Ok\033[0m\n"


# End of uninstall
printf "\033[1;33m Done! Fish you soon! 🐟\n\033[0m"

bash
