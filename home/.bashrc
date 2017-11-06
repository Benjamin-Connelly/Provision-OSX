#Fancy shell prompt
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\] "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

## Some Aliases
alias ll='ls -al'
alias vi='vim'
alias updatedb='sudo /usr/libexec/locate.updatedb'
alias ls='ls -F'
alias listen='sudo lsof -n -P -i +c 15 | grep LISTEN'
alias hg='history|grep '
alias hn='history | cut -c 8- | grep '
alias grep='grep --color=auto'
alias bc='bc -l'        #calculator with math support
alias fastping='ping -c 100 -s.2'
alias h='history' 
alias wget='wget -c'
alias j='jobs -l'
alias vssh='vagrant ssh'
alias upload='knife cookbook upload '
alias rc='vim ~/.bashrc'
alias authkeys='vim ~/.ssh/authorized_keys'
alias hosts='vim ~/.ssh/known_hosts'
alias vi='vim'
alias augmedix='cd ~/srv/nclouds/augmedix/DevOps/'
alias cdr='cd ../../recipes'
alias cdt='cd ../templates/default'
# Copy to clipboard on Mac or Linux
alias copy="$(which pbcopy &> /dev/null && echo pbcopy || echo 'xclip -sel clip' )"
alias paste='pbpaste'
# Pipe my public key to my clipboard.
alias pubkeygmail="more ~/.ssh/benjamin.t.connelly@gmail.com.pub | copy && echo '=> Public key copied to pasteboard.'"
alias pubkeynclouds="more ~/.ssh/ben@nclouds.com.pub | copy && echo '=> Public key copied to pasteboard.'"


#Bash Completion
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

# Some History tweaks
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it
# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# Lazy Git
function lg() {
    git add .
    git commit -a -m "$1"
    git push
}
# End Lazy Git

PS1="$PS1\n\$ "

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
