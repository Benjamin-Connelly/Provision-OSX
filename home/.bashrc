#Fancy shell prompt
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\] "
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
alias ctrlc='xclip -selection clipboard -i'
alias ctrlv='xclip -selection clipboard -o'
# Pipe my public key to my clipboard.
alias pubkeygmail="more ~/.ssh/benjamin.t.connelly@gmail.com.pub | copy && echo '=> Public key copied to pasteboard.'"
alias pubkeynclouds="more ~/.ssh/ben@nclouds.com.pub | copy && echo '=> Public key copied to pasteboard.'"
cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
trash () { command mv "$@" ~/.Trash ; }     # trash:        Moves a file to the MacOS trash
alias desk='cd ~/Desktop'                   # desk:         Go to the Desktop folder
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias c='clear'                             # c:            Clear terminal display
prev() { qlmanage -p "$1" >& /dev/null;}    # prev:         Opens the file in MacOS Quicklook Preview
pdf() { open -a /Applications/Preview.app/ "$1" ;} # pdf:   Opens the file in MacOS Preview
empty() { rm -rf ~/.Trash/*; }              # empty:        Empties the Trash
vlc() { open -a /Applications/VLC.app/ "$1" ;}  # vlc:      Open the file with vlc
app() { open -a /Applications/"$1".app/ ;}  # app:          Opens the application passed as an argument
alias calc="bc -l"                          # calc:         Starts a cli calculator
alias show_app="ls /Applications/"          # show_app:     Showing all the app in the Applications folder
alias upd="source ~/.bash_profile"          # upd:          Sources this file after edits has been made
alias create="touch"                        # create:       Uses the word create rather than touch to create a new file (not really a shortcut :/)
                                            #               this way it makes more sense to me
alias todo="todolist"                       # todo:         Call the todolist cmdline app (documentation: http://todolist.site/)
alias hidden_files_yes="defaults write com.apple.finder AppleShowAllFiles YES"
alias hidden_files_no="defaults write com.apple.finder AppleShowAllFiles NO"
alias augssh="ssh -i ~/.ssh/nclouds/augmedix/auw2-prod.pem nclouds@"$1""
alias haltallvm="vagrant global-status | grep virtualbox | cut -c 1-9 | while read line; do echo $line; vagrant halt $line; done;"

#   ---------------------------
#   2. SEARCHING
#   ---------------------------

alias search="find . -name "                   # search:    Quickly search for file
ff () { /usr/bin/find . -name "$@" ; }         # ff:        Find file under the current directory
fstarts () { /usr/bin/find . -name "$@"'*' ; } # fstarts:   Find file whose name starts with a given string
fends () { /usr/bin/find . -name '*'"$@" ; }   # fends:     Find file whose name ends with a given string

#   spotlight: Search for a file using MacOS Spotlight's metadata
#   -----------------------------------------------------------
#    spotlight () { mdfind "kMDItemDisplayName == '$@'wc"; }

#   ---------------------------
#   3. NETWORKING
#   ---------------------------

alias myip='dig +short myip.opendns.com @resolver1.opendns.com | pbcopy'                    # myip:         Public facing IP Address
alias netCons='lsof -i'                             # netCons:      Show all open TCP/IP sockets
alias flushDNS='dscacheutil -flushcache'            # flushDNS:     Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'             # lsock:        Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'   # lsockU:       Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'   # lsockT:       Display only open TCP sockets
alias ipInfo0='ipconfig getpacket en0'              # ipInfo0:      Get info on connections for en0
alias ipInfo1='ipconfig getpacket en1'              # ipInfo1:      Get info on connections for en1
alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections

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
    git pull
    git push
}
# End Lazy Git

# cd.. n 
function cd_up() {
  cd $(printf "%0.s../" $(seq 1 $1 ));
}
alias 'cd..'='cd_up'
# end cd.. n

PS1="$PS1\n\$ "

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

