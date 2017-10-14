source ~/.profile
source ~/.bashrc
export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/bconnelly/.chefdk/gem/ruby/2.4.0/bin:$PATH"

if [ -d "$HOME/Library/Python/2.7/bin" ]; then
    PATH="$HOME/Library/Python/2.7/bin:$PATH"
fi
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
eval "$(chef shell-init bash)"
