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
You will have to enter your password a couple times when you get to TASK [osx : Install apps with Homebrew Cask]. There are 
a few options for storing this secrets that you are welcome to explore if you need this to run completely unattended. 

If you want to explore secrets check out [Ansible Vault](https://docs.ansible.com/ansible/2.4/vault.html)or [GitCrypt](https://www.agwa.name/projects/git-crypt/)


## Thank you
Shotarok helped me work out some kinks -  https://github.com/shotarok/osx-provisioning 
