## stow · dotfiles

```bash
cd ~
brew install stow
git clone https://github.com/cdpath/dotfiles.git

cd dotfiles
stow bash
stow vim

git config --global core.excludesfile ~/.gitignore_global
stow git
...
```
