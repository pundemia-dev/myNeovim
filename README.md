# Remove old config of neovim
```
rm -rf ~/.config/nvim ~/.local/share/nvim ~/.local/state/nvim ~/.cache/nvim
```

# Needed packages
```shell
sudo pacman -S git npm
```

```
mkdir -p ~/.config/nvim
git clone git@github.com:pundemia-dev/myNeovim.git ~/.config/nvim
nvim -c "MasonInstall pyright ruff mypy debugpy"
```
