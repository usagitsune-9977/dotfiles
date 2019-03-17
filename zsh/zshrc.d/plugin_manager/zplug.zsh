export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh
# source ~/.zplug/init.zsh

# Theme
zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme

# Cd
zplug "b4b4r07/enhancd", use:init.sh

# Completion
zplug "zsh-users/zsh-completions"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf 'Install? [y/N]: '
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load
