alias g='gvim --remote-silent'
alias gt='gvim --remote-tab-silent'
alias fri='ri'
alias lh='ls --color=always -lasth | less -R'
alias be='bundle exec'
alias gr='grep -r -n --exclude=*~ --color'
alias beeps='beep -r 200'
alias t='~/bin/todo.sh -d ~/Dropbox/todo/.todo.cfg'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
#alias gvim='gvim -f'
function gvim () { /usr/bin/gvim -f $* & }
alias spec="rspec -c"
alias sharetmux="tmux -S /var/tmux/observable"
