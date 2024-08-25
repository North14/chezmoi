
---

## Installation

### Install yay and packages

    sudo pacman -Sy --needed git base-devel 
    git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
    yay -S --needed $(cat packages)

### Setup Dotfiles

Install and setup dotfiles
Requires age key in ~/.config/sops/age/keys.txt

    chezmoi init https://github.com/North14/chezmoi.git
    chezmoi cd
    mkdir ~/.config/chezmoi
    touch ~/.config/chezmoi/chezmoi.toml
    chezmoi execute-template --init < chezmoi.toml.tmpl > ~/.config/chezmoi/chezmoi.toml
    chezmoi diff
    chezmoi apply


### Install from source

    # oh-my-zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    # powerlevel10k
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    # zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    # vim-plug
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

## Post installation

### Change from lightdm to ly

    sudo systemctl disable lightdm
    sudo systemctl enable ly
### Blacklist Radeon

/etc/modprobe.d/blacklist.conf

    blacklist radeon

### Latex

    yay -S --needed $(cat packages-latex)
    # from nvim - :PlugInstall
