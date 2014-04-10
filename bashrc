
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

export CLICOLOR=1
export PS1='\[\033[00;32m\]\u@\h\[\033[00m\] \[\033[01;30m\]\w\$\[\033[00m\] '

# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

