# dotfiles

My personal set of configuration files.

## Install

### Install Homebrew

```shell
# As instructed by https://brew.sh/
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Clone this repository

```shell
# Could be a good idea to backup your .config folder first
$ mv ~/.config ~/.config.bak

# Clone this repository into ~/.config
$ git clone https://github.com/izeau/.config ~/.config

# Install packages, plugins, etc.
$ make -C ~/.config
```

Feel free to merge `~/.config.bak` and `~/.config` afterwards.

### Setup ZSH

```shell
# Keep existing ZSH history
$ mv ~/.zsh_history ~/.config/zsh/.zsh_history

# Backup the .zshenv file, if any
$ cp ~/.zshenv ~/.zshenv.bak

$ zsh -c '> ~/.zshenv <<<"source ~/.config/zsh/.zshenv"'
```

## Update

```
# Pull changes
$ git -C ~/.config pull

# Update packages, plugins, etc.
$ make -C ~/.config
```

## Extras

### iTerm2

```shell
# Create a temporary directory
$ cd $(mktemp -d)

# Download the theme, and import it
$ curl -O https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/ayu.itermcolors
$ open ayu.itermcolors
```

Other iTerm2 settings:

- Appearance / General / Theme: _Minimal_
- Appearance / Panes / Side margins: _8_
- Appearance / Panes / Top & bottom margins: _8_
- Profiles / Default / General / Basics / Name: _(empty string)_
- Profiles / Default / General / Basics / Title: _Profile_
- Profiles / Default / General / Command / Command: `/opt/homebrew/bin/tmux new-session -A`
- Profiles / Default / Colors / Color preset: _ayu_
- Profiles / Default / Colors / Smart box cursor color: _(checked)_
- Profiles / Default / Text / Text Rendering / Blinking text: _(checked)_
- Profiles / Default / Text / Text Rendering / Italic text: _(checked)_
- Profiles / Default / Text / Text Rendering / Use built-in Powerline glyphs: _(checked)_
- Profiles / Default / Text / Font: _FiraCode Nerd Font Mono / Regular / 14_
- Profiles / Default / Text / Font / Use ligatures: _(checked)_

### Bonus: enable Touch ID authentication for sudo

Add the following line at the top of `/etc/pam.d/sudo`:

```
auth sufficient pam_tid.so
```

