export ZSH="$HOME/.oh-my-zsh"
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

ZSH_THEME="nicoulaj"
eval "$(zoxide init zsh)"

zstyle ':omz:update' mode auto #update automatically without asking
zstyle ':omz:update' frequency 15 #days

plugins=(git  zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

#-----------------------------------------------------------ALIAS-------------------------------------------------------------
alias nvim="/opt/nvim/nvim/bin/nvim"
alias v="nvim"
alias a="nvim"
alias c="clear"
alias cd="z"
alias nvimconfig="cd .config/nvim && nvim ."
alias goworkspace="cd go/1.22.1/src/github.com/js-bruno/"
alias pt="neofetch --ascii communist"
#-----------------------------------------------------------FUNCTION ALIAS-------------------------------------------------------------
function killport(){
  kill -9 $(lsof -t -i:$1)
}

function killvim(){
  ps axuw | grep nvim | grep -v grep | awk '{print $2}' | xargs kill -9
  echo "all nvim instances are destroyed"
}
#-----------------------------------------------------------EXPORTS-----------------------------------------------------------
#golang workspace path
export GOPATH=$HOME/go

#GOEnv command
# export GOENV_ROOT="$HOME/.goenv"
# export PATH="$GOENV_ROOT/bin:$PATH"
# eval "$(goenv init -)"
# export PATH="$GOROOT/bin:$PATH"
# export PATH="$PATH:$GOPATH/bin"

#tmuxifier command
# export PATH="$HOME/.tmuxifier/bin:$PATH"
# eval "eval $(tmuxifier init -)"


export EDITOR="/usr/bin/nvim"
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
export PKG_CONFIG_PATH=/SOFT/libmaus2/lib/pkgconfig


# STARTUP NEOFETCH
# neofetch --ascii communist

export PATH=/opt/podman/bin:$PATH
export PATH=/opt/homebrew/bin:$PATH
export PATH=/usr/local/bin:$PATH


# STARTUP NEOFETCH

# export PATH=/usr/local/bin:/Users/jose.nascimento/.tmuxifier/bin:/bin:/Users/jose.nascimento/.goenv/bin:/home/jose/.local/bin:/usr/local/bin:/Users/jose.nascimento/.tmuxifier/bin:/bin:/Users/jose.nascimento/.goenv/bin:/home/jose/.local/bin:/usr/local/bin:/Users/jose.nascimento/.tmuxifier/bin:/bin:/Users/jose.nascimento/.goenv/bin:/home/jose/.local/bin:/usr/local/bin:/Users/jose.nascimento/.tmuxifier/bin:/bin:/Users/jose.nascimento/.goenv/bin:/home/jose/.local/bin:/usr/local/bin:/Users/jose.nascimento/.tmuxifier/bin:/bin:/Users/jose.nascimento/.goenv/bin:/home/jose/.local/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Applications/kitty.app/Contents/MacOS:/Users/jose.nascimento/go/bin:/opt/nvim/:/Users/jose.nascimento/nvim-app/bin/nvim:/opt/nvim/:/opt/nvim/:/Users/jose.nascimento/go/bin:/Users/jose.nascimento/go/bin:/Users/jose.nascimento/go/bin:/Users/jose.nascimento/go/bin:/opt/homebrew/bin:/opt/homebrew/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jose.nascimento/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jose.nascimento/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jose.nascimento/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jose.nascimento/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export PATH=/usr/local/bin:$PATH

# . "$HOME/.local/bin/env"
