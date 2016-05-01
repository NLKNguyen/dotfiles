Personal Configuration Dotfiles

The settings work for both Vim and GVim on Linux/Mac, but on Windows, only GVim.
# One-liner Command Installation

#### Windows:

Make sure `HOME` environment variable is set to the current user home directory.

Open `Command Prompt` with Adminstrator Permission
```bash
git clone https://github.com/NLKNguyen/dotfiles %HOME%/dotfiles && mklink %HOME%\.vimrc %HOME%\dotfiles\vimrc && mklink %HOME%\.gvimrc %HOME%\dotfiles\gvimrc && git clone https://github.com/VundleVim/Vundle.vim.git %HOME%/.vim/bundle/Vundle.vim
```
Open GVim and run `:PluginInstall` to get all plugins specified in vimrc

#### Linux/Unix/Mac
```bash
git clone https://github.com/NLKNguyen/dotfiles ~/dotfiles && ln -s ~/dotfiles/vimrc ~/.vimrc && ln -s ~/dotfiles/gvimrc ~/.gvimrc && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && vim +PluginInstall +qall
```

# Manual Installation
### Download dotfiles
From HOME directory
```bash
git clone https://github.com/NLKNguyen/dotfiles
```

### Create symbolic links

#### Windows
Make sure `HOME` environment variable is set to the current user home directory.

Open `Command Prompt` with Adminstrator Permission

```bash
mklink %HOME%\.vimrc %HOME%\dotfiles\vimrc
mklink %HOME%\.gvimrc %HOME%\dotfiles\gvimrc
```

#### Linux/Unix/Mac
```bash
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/gvimrc ~/.gvimrc
```

### Install Vundle plugin manager
From HOME directory
```bash
git clone https://github.com/VundleVim/Vundle.vim.git .vim/bundle/Vundle.vim
```

### First Run
Open Vim and ignore messages saying plugins are not found. Run command `:PluginInstall` to install all plugins then reopen Vim.
