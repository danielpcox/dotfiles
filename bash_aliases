alias g='gvim --remote-silent'
alias gt='gvim --remote-tab-silent'
alias fri='ri'
alias lh='ls --color=always -lasth | less -R'
alias be='bundle exec'
alias gr='grep -r -n --exclude=*~ --color'
alias beeps='beep -r 200'
alias todo='~/bin/todo.sh -d ~/Dropbox/todo/.todo.cfg'
alias t='task'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
#alias gvim='gvim -f'
function gvim () { /usr/bin/gvim -f $* & }
alias spec="rspec -c"
alias sharetmux="tmux -S /var/tmux/observable new-session -d -s observable ; tmux -S /var/tmux/observable new-session -d -s staging ; tmux -S /var/tmux/observable attach-session -t observable"
