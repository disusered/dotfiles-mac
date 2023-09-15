# ZSH environment variable for temporary files
export TMPDIR="/tmp/$USER"

# Locale settings
export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'
export LC_CTYPE='en_US.UTF-8'
export LC_NUMERIC='en_US.UTF-8'
export LC_TIME='en_US.UTF-8'
export LC_COLLATE='en_US.UTF-8'
export LC_MONETARY='en_US.UTF-8'
export LC_MESSAGES='en_US.UTF-8'

# Set the default editor
export EDITOR='nvim'
export VISUAL='nvim'
export PAGER='less'

# TODO: Colors
# Set Git options
# export GIT_LOG_STYLE_BASIC="%C(magenta bold)%h%C(reset) %C(auto)%d%C(reset) %s"
# export GIT_LOG_STYLE_COMPLEX="%C(magenta bold)%h%C(reset) %C(blue bold)%aN%C(reset) %C(auto)%d%C(reset) %s %C(8)(%cr)%C(reset)"
# export GIT_LOG_STYLE=$GIT_LOG_STYLE_COMPLEX

# Default FZF options
export FZF_DEFAULT_COMMAND='ag --hidden --files-with-matches --pager "less -R" --filename-pattern ""'
export FZF_DEFAULT_OPTS='--layout=reverse'

# Volta for Node if it exists
if [[ -d "$HOME/.volta/bin" ]]; then
  export VOLTA_HOME="$HOME/.volta"
fi

# Cargo for Rust if it exists
if [[ -d "$HOME/.cargo/bin" ]]; then
  . "$HOME/.cargo/env"
fi

# TODO: Evaluate
# FlyCTL for Fly.io
# export FLYCTL_INSTALL="$HOME/.fly"

# TODO: Evaluate
# GPG
# GPG_TTY=$(tty)
# export GPG_TTY

# Zinit configuration
export ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
