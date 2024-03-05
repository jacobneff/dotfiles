# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/root/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

zstyle ':omz:update' mode auto      # update automatically without asking

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(git 1password colored-man-pages common-aliases fzf mosh ripgrep themes z zsh-syntax-highlighting zsh-autosuggestions command-not-found)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

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

# git aliases
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias lg="lazygit"

# Changing "ls" to "exa"
alias ls='exa --icons --color=always --group-directories-first'
alias ll='exa -alF --icons --color=always --group-directories-first'
alias la='exa -a --icons --color=always --group-directories-first'
alias l='exa -F --icons --color=always --group-directories-first'
alias l.='exa -a | egrep "^\."'

# personal aliases
alias zshconfig="nvim $HOME/.zshrc"
alias ohmyzsh="nvim $HOME/.oh-my-zsh"
alias nvimrc="cd $HOME/.config/nvim; git pull; nvim ."
alias zj="zellij"
alias vim="nvim"
alias vi="nvim"
alias vimdiff="nvim -d"
alias obsidian="cd $HOME/vaults/neff-obsidian-vault; git pull; nvim ."
alias hyprconf="nvim $HOME/.config/hypr/hyprland.conf"

alias nvimks="NVIM_APPNAME=kickstart nvim"

alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# school aliases
alias oduvpn="sudo openconnect --protocol=gp --user=cs_jneff001 --server=gp.cs.odu.edu"
alias odussh="ssh cs_jneff001@linux.cs.odu.edu"
alias odusftp="sftp cs_jneff001@linux.cs.odu.edu"
alias odu="cd $HOME/odu"

# school SP24
alias cs330="cd $HOME/odu/spr24/cs330"
alias cs355="cd $HOME/odu/spr24/cs355"
alias cs361="cd $HOME/odu/spr24/cs361"
alias cs390="cd $HOME/odu/spr24/cs390"
alias cs417="cd $HOME/odu/spr24/cs417"

alias jflap="java -jar ~/applications/JFLAP7.1.jar"


# Created by `pipx` on 2024-01-15 00:57:33
export PATH="$PATH:/home/neff/.local/bin"

#Star Ship
eval "$(starship init zsh)"
