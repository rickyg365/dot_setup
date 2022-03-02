# Termux Setup

my termux setup

## Using

-   oh-my-bash
-   bash
-   fzf

## Custom functions

-   navigation (nav, mnav, fnav[fzf])
-   git (allmightypull, gitgud)
-   link/script making shortcut (linkify, scriptify)
-   setup script!!

## Directory Setup

HOME -> documents | python | rust | github | scripts | storage

### bash.bashrc

termux path=$PREFIX/etc/bash.bashrc
wsl2 path=~/.bashrc

## Oh-my-bash

### INSTALL:

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
```

### CUSTOMIZE ohmybash:

-   edit .bashrc in path=$HOME/.bashrc
-   change theme:
    -   OSH_THEME="agnoster"
-   custom theme:
    -   customize a base theme then add it to the file custom/themes/new_filename with any edits

### UNINSTALL:

-   run:
    -   uninstall_oh_my_bash
