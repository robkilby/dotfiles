# You may need to manually set your language environment
export LANG=en_GB.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export VISUAL='vim'
else
  export VISUAL='mvim'
fi
export EDITOR=$VISUAL

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

# ensure dotfiles bin directory is loaded first
export PATH="$PATH:$HOME/.bin"

# Local config
[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local
