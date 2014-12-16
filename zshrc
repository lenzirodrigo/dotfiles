# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="af-magic"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-extras mvn ruby rails brew)

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

# Temporal fix https://github.com/robbyrussell/oh-my-zsh/pull/3341
unset GREP_OPTIONS
export SAVEHIST=10000
export HISTSIZE=10000

OS=$(uname)
if [[ "$OS" == 'Linux' ]]; then
alias open=xdg-open
alias ll='ls -lhtr'

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core_perl:/usr/lib/qt4/bin:/usr/local/bin

# MAVEN
export M2_HOME=/home/rodrigo/Development/apache-maven-3.0.5
export MAVEN_OPTS="-Xmx2048m -XX:MaxPermSize=256m -Djava.io.tmpdir=/tmp"
export M2=$M2_HOME/bin
export PATH=$M2:$PATH

# JAVA
#export JAVA_HOME=/home/rodrigo/Development/java/jdk1.7.0_25
#export PATH=$JAVA_HOME/bin:$PATH
export JAVA_OPTS="-Xmx2048m -XX:MaxPermSize=256m -Djava.io.tmpdir=/tmp" 

# CONNECT 
#export CASSANDRA_HOME=/usr/share/cassandra
#export CATALINA_HOME=/usr/share/tomcat7
#export CATALINA_BASE=/usr/share/tomcat7
#export CONNECT_HOME=/opt/connect

#CONNECT LOCAL

export CASSANDRA_HOME=~/Development/apache-cassandra-2.1.0
export CATALINA_HOME=~/Development/apache-tomcat-7.0.47
export CATALINA_BASE=~/Development/apache-tomcat-7.0.47
#export CONNECT_HOME=~/Development/connect_home
export CATALINA_OPTS="-Xmx4096M -XX:MaxPermSize=512M"

# Ruby
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# ENGAGE
export TimeOut=20
#export deploy_type=TEST
export JPDA_ADDRESS=8000
export JPDA_TRANSPORT=dt_socket
export use_mock=YES

#Scala
#SBT
PATH=$PATH:/home/rodrigo/Development/scala/sbt/bin

#Skype
# export PULSE_LATENCY_MSEC=60

archey

elif [[ "$OS" == 'Darwin' ]]; then
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# MVN
export PATH=~/Development/bin/apache-maven-3.2.3/bin:$PATH
export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=256m"

# JAVA
export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)
export PATH=$JAVA_HOME/bin:$PATH
export JAVA_OPTS="-Xmx1024m -XX:MaxPermSize=256m"

# POSTGRES
export PATH=/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH
fi

