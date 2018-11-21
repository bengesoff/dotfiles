# dotfiles
Just to hold my .vimrc etc

## Setting up Neovim

First install Neovim. Clone this repo and make sure `init.vim` ends up at `~/.config/nvim/init.vim`. For example:

```
git clone https://github.com/bengesoff/dotfiles.git ~/.config/nvim
```

Run the command below (from the `vim-plug` README) to install `vim-plug`.

```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Then open vim and run `:PlugInstall` which will download and install the plugins.
