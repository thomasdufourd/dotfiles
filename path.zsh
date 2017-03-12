if [[ "$ZSH_DEBUG" == "ON" ]]; then echo "[DEBUG] setting up PATH from .dotfiles/path.sh"; fi
if [[ "$ZSH_DEBUG" == "ON" ]]; then echo "[DEBUG] PATH #0: $PATH"; fi

# Remember original PATH
ORIGINAL_PATH=$PATH

# Load Node global installed binaries
export PATH="$HOME/.node/bin"
if [[ "$ZSH_DEBUG" == "ON" ]]; then echo "[DEBUG] PATH #1: $PATH"; fi

# Use project specific binaries before global ones
export PATH="node_modules/.bin:vendor/bin:$PATH"
if [[ "$ZSH_DEBUG" == "ON" ]]; then echo "[DEBUG] PATH #2: $PATH"; fi

# Make sure coreutils are loaded before system commands
# I've disabled this for now because I only use "ls" which is
# referenced in my aliases.zsh file directly.
#export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

# Load custom commands
# Disabled this because I have no custom binaries at the moment.
# export PATH="$DOTFILES/bin:$PATH"

# load my custom local binaries
export PATH="$HOME/bin:$PATH"
if [[ "$ZSH_DEBUG" == "ON" ]]; then echo "[DEBUG] PATH #3: $PATH"; fi

export PATH="$MAVEN_HOME/bin:$PATH"
if [[ "$ZSH_DEBUG" == "ON" ]]; then echo "[DEBUG] PATH #4: $PATH"; fi
# Local bin directories before anything else
export PATH="/usr/local/bin:/usr/local/sbin:$PATH:$ORIGINAL_PATH"
if [[ "$ZSH_DEBUG" == "ON" ]]; then echo "[DEBUG] PATH #5: $PATH"; fi
