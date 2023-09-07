# Nix setup
if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
  . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
fi

. "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"

# Run the env.sh script (if it exists). That script is meant to contain secrets, tokens, and
# other things you don't want to put in your Nix config. This is quite "impure" but a
# reasonable workaround.
if [ -e ~/.env.sh ]; then
  . ~/.env.sh
fi

# Suppress direnv log output (which is super verbose and not that useful)
export DIRENV_LOG_FORMAT=

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "^[[3~" delete-char

autoload -U down-line-or-beginning-search
autoload -U up-line-or-beginning-search

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit
setopt MENU_COMPLETE

export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:/Applications/Sublime Text.app/Contents/SharedSupport/bin/:$PATH"
export ANDROID_NDK_HOME="/Volumes/DeathStar/Dev/droid/ndk/21.3.6528147"

# Enable Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
