export ZSH="$HOME/.oh-my-zsh"
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

ZSH_THEME="nicoulaj"
eval "$(zoxide init zsh)"

zstyle ':omz:update' mode auto #update automatically without asking
zstyle ':omz:update' frequency 15 #days

# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line if pasting URLs and other text is messed up.

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
plugins=(git  zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
# source /home/jose/.gvm/scripts/gvm

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

#-----------------------------------------------------------ALIAS-------------------------------------------------------------
alias v="nvim"
alias a="nvim"
alias c="clear"
alias cd="z"
alias nvimconfig="cd .config/nvim && nvim ."
alias goworkspace="cd go/1.22.1/src/github.com/js-bruno/"


fucntion killport(){
  kill -9 $(lsof -t -i:$1)
}
#-----------------------------------------------------------EXPORTS-----------------------------------------------------------
# lunar vim
export PATH=/home/jose/.local/bin:$PATH

#golang workspace path
export GOPATH=$HOME/go

#GOEnv command
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
# eval "$(goenv init -)"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"

#tmuxifier command
export PATH="$HOME/.tmuxifier/bin:$PATH"
# eval "eval $(tmuxifier init -)"

#zoxide command

export EDITOR="/usr/bin/nvim"
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
export PKG_CONFIG_PATH=/SOFT/libmaus2/lib/pkgconfig


# STARTUP NEOFETCH
# neofetch --ascii communist

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jose.nascimento/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jose.nascimento/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jose.nascimento/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jose.nascimento/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export PATH=/usr/local/bin:$PATH

