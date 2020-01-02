# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="refined"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
plugins=(osx zsh-syntax-highlighting zsh-autosuggestions pass)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

fpath=( "$HOME/.dotfiles/oh-my-zsh/custom/plugins/pure" $fpath )
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="/usr/local/lib/ruby/gems/2.6.0/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"

autoload -U promptinit; promptinit
prompt pure

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

export EDITOR='nano'
export VISUAL='nano'
export PAGER='less'
export PDF='/Applications/Preview.app'

path=(
  /usr/local/{bin,sbin}
  $HOME/Applications/_exec
  $HOME/Applications/_exec/backup-scripts
  $path
)

bindkey "^[^[[C" forward-word
bindkey "^[^[[D" backward-word

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

## Navigation
alias cdh='cd ~'
alias cdc='cd ~/Documents/Code'
alias cdp='cd ~/Dropbox/active\ projects'
alias cdcv='~/Documents/miscellaneous/_cv'
alias cdd='cd ~/Desktop'
alias cdjm='cd ~/Documents/Code/_websites/jeffreymoro-dot-com'
alias cdx='cd ~/Applications/_exec'
alias cdn='cd ~/Dropbox/Notes/'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

## Utilities
alias openf='open . /System/Library/CoreServices/Finder.app'
alias backitallup="wri-backup && diss-backup && pdf-backup"
alias python="python3"
alias pip="pip3"

## Music
alias cr="cmus-remote"
alias cu="cmus-remote -u"
alias cs="cmus-remote -s"
alias cn="cmus-remote -n"
alias cr="cmus-remote -r"
alias cq="cmus-remote -C quit"
alias music="ncmpcpp"

## Jekyll
alias serve-jm='cdjm && bundle exec jekyll serve'
alias buildtags='cdjm && tag-gen _data/tags.yaml'

## Dissertation
alias cda='cd ~/Dropbox/active\ projects/dissertation'
alias cda1='cd ~/Dropbox/active\ projects/dissertation/1-breath-control'
