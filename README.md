## stow · dotfiles

```bash
cd ~
brew install stow
git clone https://github.com/cdpath/dotfiles.git

cd dotfiles
stow bash && . ~/.bashrc
stow vim

git config --global core.excludesfile ~/.gitignore_global
stow git
...
```

## reference
[Ignoring files globally](https://help.github.com/articles/ignoring-files/)
