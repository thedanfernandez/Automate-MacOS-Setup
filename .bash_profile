# Set Ruby path
export GEM_HOME=$HOME/gems
export PATH=$HOME/gems/bin:$PATH

# Set colors
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;30;40'

parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\$(parse_git_branch)\[\033[m\]\$ "
#export PS1="\e[0;35m\w\e[m \e[0;33m|\e[m \e[0;36m\$(parse_git_branch)\e[m\]\$ "

#Aliases

#PowerShell
alias powershell="/usr/local/microsoft/powershell/6/pwsh ; exit;"

#Chrome for headless chrome
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
# Ex: chrome --headless --disable-gpu --screenshot https://www.chromestatus.com/
# Ex: chrome --headless --disable-gpu --dump-dom https://www.chromestatus.com/

alias screenshot="chrome --headless --disable-gpu --screenshot"
alias html="chrome --headless --disable-gpu --dump-dom"
alias md="mdv"

# Folder for all repos
alias repo="cd ~/_Repos"
alias scratch="cd ~/_Repos/_scratchpad"
alias scratchpad="cd ~/_Repos/_scratchpad"

# Source - https://medium.com/@tzhenghao/a-guide-to-building-a-great-bashrc-23c52e466b1c
alias ..='cd ..'
alias ...='cd ..; cd ..'
alias ....='cd ..; cd ..; cd ..'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Disk
alias ll="ls -al"
alias ls="ls  -a"
alias df="df -h"

# Networking
alias localip="ipconfig getifaddr en0"

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# git aliases
alias gdf="git diff"
alias gap="git add -p"
alias ga="git add ."
alias gc="git commit -m"
alias gs="git status"
alias gco="git checkout"
alias gul="git pull"
alias gush="git push"
alias gbra="git branch"
alias glog="git log --pretty=format:'%h - %an: %s' --graph" # print out log with hash, author name, status, and include graph info

# Determine size of a file or total size of a directory
function fs() {
	if du -b /dev/null > /dev/null 2>&1; then
		local arg=-sbh;
	else
		local arg=-sh;
	fi
	if [[ -n "$@" ]]; then
		du $arg -- "$@";
	else
		du $arg .[^.]* ./*;
	fi;
}
