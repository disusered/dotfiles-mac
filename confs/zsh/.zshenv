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

# Set Git options
export GIT_LOG_STYLE_BASIC="%C(magenta bold)%h%C(reset) %C(auto)%d%C(reset) %s"
export GIT_LOG_STYLE_COMPLEX="%C(magenta bold)%h%C(reset) %C(blue bold)%aN%C(reset) %C(auto)%d%C(reset) %s %C(8)(%cr)%C(reset)"
export GIT_LOG_STYLE=$GIT_LOG_STYLE_COMPLEX

# Default FZF options
# Colors from https://github.com/catppuccin/fzf
export FZF_DEFAULT_COMMAND='ag --hidden --files-with-matches --pager "less -R" --filename-pattern ""'
export FZF_DEFAULT_OPTS=" \
--layout=reverse \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

# Volta for Node if it exists
if [[ -d "$HOME/.volta/bin" ]]; then
  export VOLTA_HOME="$HOME/.volta"
fi

# Cargo for Rust if it exists
if [[ -d "$HOME/.cargo/bin" ]]; then
  . "$HOME/.cargo/env"
fi

# Zinit configuration
export ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
