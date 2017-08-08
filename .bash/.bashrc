#vi to vim
alias vi='vim'

#updatedb
alias updatedb='sudo /usr/libexec/locate.updatedb'

#Fancy shell prompt
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\] "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

## Use a long listing format ##
alias ll='ls -al'
alias ls='ls -F'
#Connections -- grep LISTEN
alias listen='sudo lsof -n -P -i +c 15 | grep LISTEN'
alias hg='history|grep '
alias grep='grep --color=auto'
alias bc='bc -l'        #calculator with math support
alias fastping='ping -c 100 -s.2'
alias wget='wget -c'

#Bash Completion
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# handy short cuts #
alias h='history'
alias j='jobs -l'

#vagrant
alias vssh='vagrant ssh'

PS1="$PS1\n\$ "

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
