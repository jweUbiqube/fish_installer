#!~/local/bin/fish


printf "\033[1;36m Installing fish shell plugins..."
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install PatrickF1/fzf.fish
fisher install dracula/fish
fish_config theme choose "Dracula Official"
printf "\033[32m Ok\033[0m\n"