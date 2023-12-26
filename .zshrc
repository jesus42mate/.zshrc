# Path to my oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Bindings

# bindkey '^a' autosuggest-accept;
# bindkey '^f' autosuggest-fetch;
# bindkey '^t' autosuggest-toggle;

# Aliases by jesu42mate

# Source files
alias so='source ~/.zshrc';

function edit() {
	local where=$1
	if [[ $where == " " ]];	then
		echo "What?"
	elif [[ $where == "1" ]]; then
		echo "That's  a one..."
	elif [[ $where == "zsh" ]]; then
		cd ~/
		nvim .zshrc
	elif [[ $where == "nvim" ]]; then
		cd ~/.config/nvim
		nvim .
	else 
		echo "No command available for the entered option."
	fi
}

# Function for fast cd'ing and fast nvim'ing 
function goto() {
	local where=$1	# first argument passed 
	if [[ $where == "nvimf" ]];		then
		cd ~/.config/nvim
	elif [[ $where == "pgroundf" ]]; then
		cd ~/Playground
	elif [[ $where == "venf" ]];	then
		cd ~/Playground/Critical/Vennie
	elif [[ $where == "frontf" ]];	then
		cd ~/Proyects/Empatico/Repos/frontend-app
	elif [[ $where == "backf" ]];	then
		cd ~/Proyects/Empatico/Repos/backend-app
	elif [[ $where == "" ]]; then
		cd ~/Playground
	else 
		echo "No command available for the entered option."
	fi
}

function notes() {
	cd ~/Notes
	nvim .
}

function bento2() {
	cd ~/Playground/React/bento2
	nvim .
}

function frontend() {
	cd ~/Proyects/Empatico/Repos/frontend-app
	nvim .
}

function frontendf() {
	cd ~/Proyects/Empatico/Repos/frontend-app
}

function backend() {
	cd ~/Proyects/Empatico/Repos/backend-app
	nvim .
}

function backendf() {
	cd ~/Proyects/Empatico/Repos/backend-app
}

function bento() {
	cd ~/Playground/React/bento2;
	nvim .
}

function bentof() {
	cd ~/Playground/React/bento2;
}

function pground() {
	cd ~/Playground
	nvim .
}

function reactf() {
	cd ~/Playground/React
}


function ven() {
	cd ~/Playground/Critical/Vennie
	nvim .
}

function venf() {
	cd ~/Playground/Critical/Vennie;
}

function ohmyf() {
	cd ~/.oh-my-zsh;
}

function noties() {
	local which=$1
	if [[ $which == "docker" ]]; then
		cd ~/Notes/docker
		nvim .
	fi
}


# Nvim into files
#alias nvimf='nvim ~/.config/nvim';
alias bshrc='nvim ~/.bashrc';
alias proy='nvim ~/Proyects';
alias zshf='nvim ~/.zshrc';

# Cd into 
alias c='cd ~/Playground/C';
alias crit='cd ~/Playground/Critical';
alias empatic='cd /home/jesu42mate/Proyects/Empatico/Repos';
alias openbooks='open ~/Downloads/books'
alias pgroundf='cd ~/Playground'

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
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

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

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

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting fast-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='nvim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
