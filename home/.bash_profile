source ~/.profile
source ~/.bashrc
export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/bconnelly/.chefdk/gem/ruby/2.4.0/bin:$PATH"

LP_PS1_PREFIX="\n"
LP_PS1_POSTFIX="\n# "
  if [ -f /usr/local/share/liquidprompt ]; then
    . /usr/local/share/liquidprompt
  fi

alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

eval "$(chef shell-init bash)"
