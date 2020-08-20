# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git pipenv)

# User configuration
#export PATH="/usr/local/anaconda3/bin:$HOME/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.rvm/bin:/usr/local/bin:~/.local/bin"
export PATH="$HOME/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.rvm/bin:/usr/local/bin:~/.local/bin"
export MAVEN_OPTS="-Djavax.net.ssl.trustStore=/Library/Java/cacerts -Djavax.net.ssl.trustStorePassword=changeit -Xmx512m -XX:MaxPermSize=128m -XX:+TieredCompilation -XX:TieredStopAtLevel=1"
# for mactex
#eval `/usr/libexec/path_helper -s`

# for docker-machine
#eval $(docker-machine env default)
#export DOCKER_TLS_VERIFY="1"
#export DOCKER_HOST="tcp://192.168.99.100:2376"
#export DOCKER_CERT_PATH="$HOME/.docker/machine/machines/default"
#export DOCKER_MACHINE_NAME="default"

source $ZSH/oh-my-zsh.sh

# fix GPG agent for leiningen
#gpg-agent --daemon --enable-ssh-support \
#      --write-env-file "${HOME}/.gpg-agent-info"
#if [ -f "${HOME}/.gpg-agent-info" ]; then
#   . "${HOME}/.gpg-agent-info"
#  export GPG_AGENT_INFO
#  export SSH_AUTH_SOCK
#  export SSH_AGENT_PID
#fi

export GPG_TTY=$(tty)

export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin
export DGO=$GOPATH/src/github.com/deciphernow/


#NVM
export NVM_DIR="$HOME/.nvm"
#. "/usr/local/opt/nvm/nvm.sh"

#source $HOME/.nix-profile/etc/profile.d/nix.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# TensorFlow
export CUDA_HOME=/usr/local/cuda
export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:$CUDA_HOME/lib"
export PATH="$CUDA_HOME/bin:$PATH"
export TESSDATA_PREFIX="$HOME/heap/tessdata"

# Anaconda
#export PATH=/opt/anaconda3/bin:/usr/local/anaconda3/bin:"$PATH"
#source /usr/local/anaconda3/etc/profile.d/conda.sh

# Minishift
#eval $(minishift oc-env)

source ~/.bash_aliases


PROMPT="%{$fg[green]%}%m%{$reset_color%} ${PROMPT}"
RPROMPT="%D{%Y-%m-%d %H:%M:%S}"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# . /opt/anaconda3/etc/profile.d/conda.sh

# Grey Matter
export GMENV_REPO=dev

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# hack to activate the pipenv plugin when opening a new terminal window
cd $(pwd)

