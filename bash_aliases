# for loading files in an open gvim from the console
alias g='gvim --remote-silent'
alias gt='gvim --remote-tab-silent'

# colorful, scrollable ls with verbose options
alias lh='ls --color=always -lasth | less -R'

# i type this command a lot
alias be='bundle exec'

# colorful recursive grep with line numbers, excluding vim swaps
alias gr='grep -r -n -H --exclude="*~" --color'

# something to use for an alarm when things finish
alias beeps='beep -r 200'

# taskwarrior and todo.txt aliases
alias t='clear ; task'
alias todo='~/bin/todo.sh -d ~/Dropbox/todo/.todo.cfg'

# make these commands a bit safer
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

# gvim detaches from the terminal
function gvim () { /usr/bin/gvim -f $* & }

# colorize rspec
alias rspec="rspec -c"

# shared tmux session
alias start_observable="tmux -S /var/tmux/observable new-session -d -s observable ; tmux -S /var/tmux/observable new-session -d -s staging ; tmux -S /var/tmux/observable attach-session -t observable"
alias observable="tmux -S /var/tmux/observable"

function anybar { echo -n $1 | nc -4u -w0 localhost ${2:-1738}; }
