## > set mirrors
sudo pacman-mirrors -c Germany ;sudo pacman -Syu --noconfirm

## > zsh 
sudo pacman -S zsh yay --noconfirm

## > ohmyzsh 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
## > powerlevel10 
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

yay -S base base-devel chromium cmake xclip xsel neovim fzf alacritty tmux tmuxinator ranger ueberzug --noconfirm

