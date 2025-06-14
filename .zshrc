export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="refined"

HYPHEN_INSENSITIVE="true"

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 7

ENABLE_CORRECTION="true"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH="$HOME/.cargo/bin:$PATH"
export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
export PNPM_HOME="/home/$USER/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

export ZSHZ_CASE=smart
bindkey '^y' autosuggest-accept

export JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$PATH

