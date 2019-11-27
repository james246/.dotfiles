# My dotfiles

### Prerequisites

- Install oh-my-zsh: `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- Install Sublime Text 3
- Install homebrew packages:

```bash
brew install git sdkman bash-completion
```

- Install Java: `sdk install java <version>` (e.g. `11.0.5.hs-adpt`)

### Setup

```bash
cd ~
git clone git@github.com:james246/.dotfiles.git

ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.pryrc ~/.pryrc
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/sublime/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
ln -s ~/.dotfiles/sublime/binding-pry.sublime-snippet ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/binding-pry.sublime-snippet
ln -s ~/.dotfiles/sublime/Default\ \(OSX\).sublime-keymap ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap
```
