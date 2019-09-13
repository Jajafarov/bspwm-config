if status --is-interactive
    abbr --add --global fd fd -I
end

set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_CACHE_HOME $HOME/.cache
set -x XDG_DATA_HOME $HOME/.local/share
set -x PARALLEL_HOME $XDG_CONFIG_HOME/parallel
set -x PASSWORD_STORE_DIR $XDG_DATA_HOME/pass
set -x GNUPGHOME $XDG_DATA_HOME/gnupg
set -x WGETRC $XDG_CONFIG_HOME/wgetrc
set -x CARGO_HOME $XDG_DATA_HOME/cargo
set -x LESSKEY $XDG_CONFIG_HOME/less/lesskey
set -x LESSHISTFILE $XDG_CACHE_HOME/less/history

alias cp="cp -i"                          # confirm before overwriting something
alias df="df -h"                          # human-readable sizes
alias free="free -m"                      # show sizes in MB
alias np="nano -w PKGBUILD"
alias wget="wget --hsts-file=$XDG_CACHE_HOME/wget-hsts"
alias svn="svn --config-dir $XDG_CONFIG_HOME/subversion"
alias pomo="pomo --path $XDG_CONFIG_HOME/pomo"
alias tmux="tmux -f "$XDG_CONFIG_HOME"/tmux/tmux.conf"
alias gpg="gpg --homedir $XDG_DATA_HOME/gnupg"
