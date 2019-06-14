# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/harsha/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="simple"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"
#alias key='ssh-add -k /home/harsha/.ssh/id_rsa && ssh-add && ssh-add -k /home/harsha/ntp/sunbird-staging && ssh-add -k /home/harsha/ntp/ntp-production && ssh-add -k /home/harsha/ntp/sunbird'
alias key='ssh-add -k /home/harsha/ntp/{sunbird,harsha-private-key,prod-ops,staging-ops}'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gpl='git pull'
alias gs='git status'
alias gb='git branch'
alias gba='git branch -a'
alias vi='nvim'
alias ip='cat /home/harsha/ntp/ntp'
alias td='tmux detach'
alias ta='tmux attach'
alias t='tmux'
alias vpn='sudo openvpn --config /home/harsha/Documents/diksha-client.ovpn'
alias ekstepvpn='sudo openvpn --config /home/harsha/Documents/ekstep-client.ovpn'
alias sunbirdvpn='sudo openvpn --config /home/harsha/Documents/sunbird-client.ovpn'
# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"


#SSH shortcuts
alias sm='ssh -A harsha@10.20.1.5 -t ssh -A harsha@11.3.0.25 -t ssh -A harsha@11.3.1.4' #staging
alias pm='ssh -A harsha@10.20.1.5 -t ssh -A harsha@11.4.0.29 -t ssh -A harsha@11.4.1.4' #prod
alias um='ssh -A harsha@10.20.1.5 -t ssh -A harsha@11.5.0.10 -t ssh -A harsha@11.5.1.5' #preprod
alias pm1='ssh -A harsha@10.20.1.5 -t ssh -A harsha@11.4.0.29 -t ssh -A harsha@11.4.1.7' #prod
#Postman
alias postman='/home/harsha/Documents/Postman/Postman'
alias g='google'
# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes
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
   docker
   gitfast
   copydir
   copyfile
   web-search
)
source $ZSH/oh-my-zsh.sh

# User configuration
#Accept autosugesstion with ctrl+n
bindkey '^n' autosuggest-accept

# export MANPATH="/usr/local/man:$MANPATH"
alias sshh='/home/harsha/.zsh/sshh'
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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#export TERM=xterm-256color

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


#initialize Z (https://github.com/rupa/z) 
. ~/.zsh/z.sh 

