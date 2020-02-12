# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/lachlanhardy/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)


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


# git
alias g="git"
alias gst="git status"
alias lol="git log --graph --decorate --pretty=oneline --abbrev-commit"
alias gl="git pull"
alias gp="git push"
alias gpp="git pull && git push"
alias gd="git diff"
alias gc="git commit -m"
alias ga="git add"
alias gm="git merge --ff-only"
alias gco="git checkout"
alias gr="git reset --soft HEAD^"
alias gx="gitx"

# Finder
alias ..="cd .."
alias ...="cd ../.."
alias ll="ls -la"
alias lt="ls -lt"       # sort with recently modified first
alias rm="rm -iv"       # request confirmation when deleting files and be verbose

# Misc
alias h="history"
alias hc="/usr/bin/clear" # clears history. or is "history -c` which clears terminal but not .bash_history file
alias grep="grep --color=auto"
alias pubkey="cat ~/.ssh/*.pub |pbcopy && echo 'Keys copied to clipboard'"
alias reload="source ~/.zshrc"
alias md="macdown"
alias tree="tree -C"

# Processes
alias tm="top -o csize" # memory
alias tu="top -o cpu" # cpu

# Ruby
alias gemi="gem install --no-rdoc --no-ri"

# rails
alias rep="RAILS_ENV=production"
alias res="RAILS_ENV=staging"
alias rdm="rake db:migrate && rake db:test:prepare"
alias rollback="rake db:rollback"
alias td="tail -f log/development.log"
alias ttr="touch tmp/restart.txt"
alias rlc="rake log:clear"
alias rc="rails console"
alias rs="rails server"

bindkey "^R" history-incremental-search-backward

export EDITOR="mvim -f"

# chruby specific
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Initialise colours
autoload -U colors
colors

# Allow for functions in the prompt.
setopt PROMPT_SUBST

# Quicker navigation to sub dirs in most visited dirs
setopt auto_cd
cdpath=($HOME/odrive/Dropbox_Personal/work)

# Make Homebrew’s completions available
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# Use modern completion system
autoload -Uz compinit
compinit

# Get the name of the branch we are on
#function parse_git_branch() {
#  git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/(\1) /";
#}

#PS1="%~ \$(parse_git_branch)\$ "

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/ems/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

. /usr/local/etc/profile.d/z.sh

export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH
export PATH="$(brew --prefix qt@5.5)/bin:$PATH"
export PATH="/usr/local/opt/ncurses/bin:$PATH"
