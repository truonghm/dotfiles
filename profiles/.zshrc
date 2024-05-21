# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="af-magic"
ZSH_THEME="ys_python"

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
plugins=(
    gitfast
    kubectl
    mongo-atlas
    fzf
    zsh-autosuggestions
    zsh-syntax-highlighting
    sudo
    colorize
    copypath
    copyfile
    docker
    docker-compose
    )

source $ZSH/oh-my-zsh.sh

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
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# start ssh-agent
# eval "$(ssh-agent -s)"

# Check if Tailscale is up
tailscale_status="$(tailscale status)"

if [[ "$tailscale_status" == "Tailscale is stopped." ]]; then

  echo "Tailscale is currently down!"
else
  echo "Tailscale is currently up!"
fi

# aliases
alias home="cd ~"
alias ac="source $HOME/miniconda3/bin/activate"
alias conda38="source $HOME/miniconda3/bin/activate py38"
alias conda310="source $HOME/miniconda3/bin/activate py310"
alias conda37="source $HOME/miniconda3/bin/activate py37"
alias wttr="curl wttr.in/Hanoi"
alias tf="tree -L 2"
alias lzd="lazydocker"
alias pipc="/home/truonghm/miniconda3/envs/pip-base/bin/python -m piptools compile"
alias pips="/home/truonghm/miniconda3/envs/pip-base/bin/python -m piptools sync"
alias lpf="python -m http.server 1719"
alias tsu="sudo tailscale up --exit-node=singapore-node --exit-node-allow-lan-access --reset"
alias tsue="sudo tailscale up --exit-node=europe-node --exit-node-allow-lan-access --reset"
alias tsd="sudo tailscale down"
alias tss="tailscale status"
alias gitc="git commit --no-verify -m"
alias gitcv="git commit -m"
alias fuckit="git symbolic-ref HEAD refs/head/development && git reset --hard"
alias avenv="source .venv/bin/activate"

function gitss {
    local stashName="$1"

    # Check if there are any staged changes
    if git diff --cached --quiet && git ls-files --others --exclude-standard --directory --no-empty-directory --quiet; then
        echo "No staged changes to stash."
        return 1
    fi

    # Stash the changes with the provided stash name
    if ! git stash push --keep-index -m "$stashName"; then
        echo "Failed to stash changes."
        return 1
    fi

    # Get a list of all staged files, both tracked and untracked
    staged_files=$(git status --porcelain | awk '{if ($1 == "A" || $1 == "M") print $2}')

    if [ -z "$staged_files" ]; then
        echo "No files were staged."
        return 1
    fi

    # Read the staged files line by line
    echo "$staged_files" | while IFS= read -r file; do
        echo "Unstaging and reverting changes in $file"
        git reset HEAD "$file"  # Unstage the file
        if git ls-files --error-unmatch "$file" > /dev/null 2>&1; then
            git checkout -- "$file"  # Revert changes for tracked files
        else
            rm "$file"  # Remove the file if it was untracked
        fi
    done
}


# keybinding
bindkey '^I'   complete-word       # tab -> complete
bindkey '^ ' autosuggest-accept  # shift + tab -> autosuggest


# cargo
export PATH="$HOME/.cargo/bin:$PATH"
export FONTCONFIG_PATH=/etc/fonts


# fix issue with tilix
# if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
#         source /etc/profile.d/vte.sh
# fi


# change color
export TERM=xterm-256color
export PATH="${PATH}:${HOME}/.local/bin"
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"

# Load Angular CLI autocompletion.
# source <(ng completion script)

# Scripts
export PATH="$HOME/scripts:$PATH"
. "$HOME/.cargo/env"

export VIRTUAL_ENV_DISABLE_PROMPT=1
