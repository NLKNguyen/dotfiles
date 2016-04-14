Personal Configuration Dotfiles

## Installation

### Download dotfiles
From HOME directory
```
git clone https://github.com/NLKNguyen/dotfiles
```

### Create symbolic links

#### Windows
Make sure `HOME` environment variable is set to the current user home directory.

Open `Command Prompt` with Adminstrator Permission

```
mklink %HOME%\.vimrc %HOME%\dotfiles\vimrc
mklink %HOME%\.gvimrc %HOME%\dotfiles\gvimrc
mklink  /J %HOME%\.vim %HOME%\vimfiles
```

### Install Vundle plugin manager
From HOME directory
```
git clone https://github.com/VundleVim/Vundle.vim.git vimfiles/bundle/Vundle.vim
```
