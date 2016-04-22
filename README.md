Personal Configuration Dotfiles

# One-liner Command Installation

#### Windows:

Make sure `HOME` environment variable is set to the current user home directory.

Open `Command Prompt` with Adminstrator Permission
```bash
git clone https://github.com/NLKNguyen/dotfiles %HOME%/dotfiles && mklink %HOME%\.vimrc %HOME%\dotfiles\vimrc && mklink %HOME%\.gvimrc %HOME%\dotfiles\gvimrc && git clone https://github.com/VundleVim/Vundle.vim.git %HOME%/.vim/bundle/Vundle.vim && vim +PluginInstall +qall
```

#### Linux/Unix/Mac
// TODO



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
// TODO


### Install Vundle plugin manager
From HOME directory
```bash
git clone https://github.com/VundleVim/Vundle.vim.git .vim/bundle/Vundle.vim
```

### First Run
Open Vim and ignore messages saying plugins are not found. Run command `:PluginInstall` to install all plugins then reopen Vim.
