## Set ZSH_DEBUG to ON/OFF
export ZSH_DEBUG="OFF"

if [[ "$ZSH_DEBUG" == "ON" ]]; then echo "[DEBUG] debug mode is on"; fi

if [[ "$ZSH_DEBUG" == "ON" ]]; then echo " "; fi
if [[ "$ZSH_DEBUG" == "ON" ]]; then echo "[DEBUG] initializing .zshrc"; fi

# Path to your dotfiles installation.
export DOTFILES=$HOME/.dotfiles

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kolo"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$DOTFILES

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(composer git git-extras httpie github npm sublime vagrant)

# Environment variables
if [[ "$ZSH_DEBUG" == "ON" ]]; then echo "[DEBUG] setting up some environment variables"; fi
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
export MAVEN_HOME=$HOME/bin/apache-maven-3.3.9
export POSTGRES_HOME=/Applications/Postgres.app/Contents/Versions/latest

# Maven settings
export MAVEN_OPTS="-Xmx1024M -XX:MaxPermSize=1024m -Dfile.encoding=UTF-8"
### debug ###MAVEN_OPTS="$MAVEN_OPTS -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5005"
export M2_REPO=$HOME/.m2/repository


# Activate Oh-My-Zsh
if [[ "$ZSH_DEBUG" == "ON" ]]; then echo "[DEBUG] activating Oh My Zsh!"; fi
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
##export LC_ALL=en_US.UTF-8
##export LANG=en_US.UTF-8

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


# miscellanous
#-------------
# the following makes it possible to comment a command-line, just like bash
setopt interactivecomments
