
---

## Installation

Install and setup dotfiles
Requires age key in ~/.config/sops/age/keys.txt

    chezmoi init https://github.com/North14/chezmoi.git
    chezmoi execute-template --init < chezmoi.toml.tmpl > ~/.config/chezmoi/chezmoi.toml
    chezmoi diff
    chezmoi apply
