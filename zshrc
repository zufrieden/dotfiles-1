# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="toni"

# Aliases
alias wbf='ssh tonifisler@web420.webfaction.com'

alias vi='/usr/local/bin/vim'
alias tree='tree -A -C --dirsfirst'

alias sites='cd ~/Sites'
alias as='cd ~/Sites/Antistatique'

alias github='cd ~/GitHub'

alias npmls='npm ls --depth=0'
alias npm-check='npm-check-updates'

alias lg='git lg'

alias ngrok="~/bin/ngrok"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=7

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

DEFAULT_USER="toni"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(gitfast brew git git-flow-avh node sudo osx ruby sublime autojump bower npm zsh-syntax-highlighting zsh-completions composer)

source $ZSH/oh-my-zsh.sh
source ~/.git-flow-completion.zsh
source ~/.

# Customize to your needs...
export PATH=$PATH:/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:/usr/local/Cellar/php54/5.4.29/bin:/usr/local/bin:$PATH:~/bin
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH

export HOMEBREW_GITHUB_API_TOKEN=43d4fc7efbb9515c8aebf7a4737817653350957b


# LSCOLORS/LS_COLORS
autoload colors; colors;

LS_COLORS="di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32";
LSCOLORS="ExGxFxDxCxDxDxhbhdacEc";

# Do we need Linux or BSD Style?
if ls --color -d . &>/dev/null 2>&1
then
  # Linux Style
  export LS_COLORS=$LS_COLORS
  alias ls='ls --color=tty'
else
  # BSD Style
  export LSCOLORS=$LSCOLORS
  alias ls='ls -G'
fi

# Use same colors for autocompletion
zmodload -a colors
zmodload -a autocomplete
zmodload -a complist
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"