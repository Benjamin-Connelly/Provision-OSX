# OS X Provisioning
Ansible files for OS X Provisioning.
## How to use
### Preparation
```shell
# install command line tools
sudo xcodebuild -license
xcode-select --install
# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
# install ansible
brew install ansible
```
# Download repo
```shell
git clone git@github.com:bc-drop/dotfiles.git ~/.dotfiles/
cd .dotfiles
```
# Set username variable 
Edit line 6 of osx.yml to reflect your username
### Run all provisioning
```shell
git submodule update # for ansible-modules-extra
HOMEBREW_CASK_OPTS="--appdir=/Applications" ansible-playbook osx.yml
```
## Thank you
Shotarok helped me work out some kinks -  https://github.com/shotarok/osx-provisioning 
