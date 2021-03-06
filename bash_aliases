# for loading files in an open gvim from the console
#alias g='gvim --remote-silent'
#alias gt='gvim --remote-tab-silent'

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

#alias e='emacsclient -t'
#alias ec='emacsclient -c'
#alias vim='emacsclient -t'
#alias vi='emacsclient -t'

# colorize rspec
alias rspec="rspec -c"

# shared tmux session
alias start_observable="tmux -S /var/tmux/observable new-session -d -s observable ; tmux -S /var/tmux/observable new-session -d -s staging ; tmux -S /var/tmux/observable attach-session -t observable"
alias observable="tmux -S /var/tmux/observable"

function anybar { echo -n $1 | nc -4u -w0 localhost ${2:-1738}; }

# git
alias g='git'
#unalias gl
alias gitroot='cd $(git rev-parse --show-toplevel)'

# maven
alias mcpst="mvn clean package -DskipTests --offline"
alias mpst="mvn package -DskipTests --offline"
alias mcist="mvn clean install -DskipTests --offline"

# atom
alias a="reattach-to-user-namespace atom"
alias atom="reattach-to-user-namespace atom"

# docker
alias d="docker"
alias dc="docker-compose"
alias drmall="docker rm -f --volumes \$(docker ps -qa)"
alias drmiuntagged="docker rmi \$(docker images | grep '^<none>' | awk '{ print $3 }')"
alias drmvolumes="docker volume rm \$(docker volume ls | awk '{ print $2 }')"
alias dcup='docker-compose up -d && docker-compose logs -f'

# neovim
alias vim=nvim

# pipenv
alias pe=pipenv


alias ahab='docker ps -a | grep -v CONTAINER | awk '\''{print $1}'\'' | xargs docker stop | xargs docker rm; docker volume ls -qf dangling=true | xargs docker volume rm'

# ansible
ap='ansible-playbook'

# bc with math libraries and quiet loading
alias bc="bc -lq"

# Kubernetes / Grey Matter
alias kc='kubectl'
alias skc='sudo kubectl'
alias mk='minikube'
alias gm='greymatter'
alias awsume='. awsume'
alias k3d='sudo -E k3d'
alias watch='watch '

#fluent bit
alias fluent-bit=/opt/td-agent-bit/bin/td-agent-bit

# search manpage for an option, like manopt grep -p
function manopt() { man $1 | less -p "^ +$2"; }

# jupyter
function EPHEMERAL_PORT() {
    LOW_BOUND=49152
    RANGE=16384
    while true; do
        CANDIDATE=$[$LOW_BOUND + ($RANDOM % $RANGE)]
        (echo "" >/dev/tcp/127.0.0.1/${CANDIDATE}) >/dev/null 2>&1
        if [ $? -ne 0 ]; then
            echo $CANDIDATE
            break
        fi
    done
}
alias jn='jupyter notebook --ip 0.0.0.0 --port $(EPHEMERAL_PORT)'
