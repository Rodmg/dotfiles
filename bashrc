
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

export CLICOLOR=1
# export PS1="\[\033[00;32m\]\u@\h\[\033[00m\] \[\033[01;30m\]\w \$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\$\[\033[00m\] "

function color_my_prompt {
    local __user_and_host="\[\033[00;32m\]\u@\h"
    local __cur_location="\[\033[01;30m\]\w"
    local __git_branch_color="\[\033[34m\]"
    #local __git_branch="\`ruby -e \"print (%x{git branch 2> /dev/null}.grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`"
    local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
    local __prompt_tail="\[\033[30m\]$"
    local __last_color="\[\033[00m\]"
    export PS1="$__user_and_host $__cur_location $__git_branch_color$__git_branch$__prompt_tail$__last_color "
}
color_my_prompt

# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

