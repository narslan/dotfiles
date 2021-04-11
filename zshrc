# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/nevroz/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="random"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git globalias zsh-git-lfs)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias gobe='cd /home/nevroz/go/src/gitlab.com/veriyaz/'
alias be='cd /home/nevroz/go/src/gitlab.com/verisoftware/veri24/backend'
alias fr='cd /home/nevroz/go/src/gitlab.com/verisoftware/veri24/frontend/monofrontend'
alias gogo='cd /home/nevroz/go/src/github.com/narslan'
alias re='cd /home/nevroz/veriyaz/recommendsystem/notebooks/colabrecommender'
alias ref='cd /home/nevroz/veriyaz/recommendsystem/recomfrontend'
alias zshconfig="gvim ~/.zshrc"
alias vimconfig="gvim ~/.vimrc"
alias gb="git branch"
alias gst="git status"
alias gcb="git checkout -b"
alias gf="git fetch"
alias ggl="git pull origin $(current_branch)"
alias gcam="git commit -a -m"
alias ggp="git push origin $(current_branch)"


export GOPATH=$HOME/go
export GOBIN=$HOME/go/bin
export PATH="$GOBIN:$PATH"
export CBBIN=/opt/couchbase/bin
export PATH="$CBBIN:$PATH"
export PYTHONBIN="/home/nevroz/.local/bin"
export PATH="$PYTHONBIN:$PATH"
export GOPRIVATE="gitlab.com/veri24/*"
export CODENATION_ENV="DEV"
export PATH="$PATH:/usr/local/go/bin:$GOPATH/bin"
export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
export PATH="/snap/bin:$PATH"
export NATS_TRACKER_CLIENT_ID="nats-tracker-nevroz"
export NATS_CONSUMER_CLIENT_ID="nats-consumer-nevroz"

#export PATH=/usr/local/cuda-10.2/bin${PATH:+:${PATH}}$ 
#export LD_LIBRARY_PATH=/usr/local/cuda-10.2/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

export DATABASE_URL="sqlite3:///home/nevroz/accounts.db"
export REDIS_URL="redis://localhost:6379/0"
export AUTHN_URL="http://localhost:3000"
export APP_DOMAINS="localhost"
export SECRET_KEY_BASE=changeit
export HTTP_AUTH_USERNAME=nevroz 
export HTTP_AUTH_PASSWORD=1q2w3e
export ASYMPTOTE_PDFVIEWER="/usr/bin/zathura"
export HADOOP="/home/nevroz/prog/hadoop-3.3.0/bin"
export HADOOP_CONF_DIR="/home/nevroz/prog/hadoop-3.3.0/etc"
export SPARK_HOME="/home/nevroz/.local/lib/python3.8/site-packages/pyspark"
export PATH="$PATH:$HADOOP"
export SPARK_LOCAL_IP=127.0.0.1
export PYSPARK_PYTHON=python3
export PYSPARK_DRIVER_PYTHON="jupyter"
export PYSPARK_DRIVER_PYTHON_OPTS="notebook"
export NODE_PATH="/home/nevroz/.nvm/versions/node/v14.15.0/lib/node_modules"
export PATH="$(yarn global bin):$PATH"

