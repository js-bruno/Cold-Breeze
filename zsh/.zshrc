#-----------------------------------------------------------STARTUP-APPS-------------------------------------------------------------
export ZSH="$HOME/.oh-my-zsh"
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

ZSH_THEME="nicoulaj"
eval "$(zoxide init zsh)"

zstyle ':omz:update' mode auto #update automatically without asking
zstyle ':omz:update' frequency 15 #days

plugins=(git  zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
export ARCHFLAGS="-arch x86_64"

#-----------------------------------------------------------ALIAS-------------------------------------------------------------
alias v="nvim"
alias a="nvim"
alias c="clear"
alias cd="z"
alias nvimconfig="cd .config/nvim && nvim ."
alias goworkspace="cd go/1.22.1/src/github.com/js-bruno/"
alias branchs="git branch --sort=-committerdate -al"
alias pt="neofetch --ascii communist"
alias en="sudo nvim /etc/nixos/configuration.nix"
alias marx="~/marx.sh"


function killport(){
  kill -9 $(lsof -t -i:$1)
}

function killvim(){
  ps axuw | grep nvim | grep -v grep | awk '{print $2}' | xargs kill -9
  echo "all nvim instances are destroyed"
}
#-----------------------------------------------------------EXPORTS-----------------------------------------------------------
export GOPATH=$HOME/go

<<<<<<< HEAD
#GOEnv command
# export GOENV_ROOT="$HOME/.goenv"
# export PATH="$GOENV_ROOT/bin:$PATH"
# eval "$(goenv init -)"
# export PATH="$GOROOT/bin:$PATH"
# export PATH="$PATH:$GOPATH/bin"

#tmuxifier command
# export PATH="$HOME/.tmuxifier/bin:$PATH"
# eval "eval $(tmuxifier init -)"


=======
>>>>>>> eb9aa5f (feature: adding wezterm with background style)
export EDITOR="/usr/bin/nvim"
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
export PKG_CONFIG_PATH=/SOFT/libmaus2/lib/pkgconfig


# STARTUP NEOFETCH
# neofetch --ascii communist

export PATH=/opt/podman/bin:$PATH
export PATH=/opt/homebrew/bin:$PATH
export PATH=/usr/local/bin:$PATH


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jose.nascimento/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jose.nascimento/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jose.nascimento/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jose.nascimento/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
