if status --is-interactive
    abbr --add --global fd fd -I
end

alias cp="cp -i"                          # confirm before overwriting something
alias df="df -h"                          # human-readable sizes
alias free="free -m"                      # show sizes in MB
alias np="nano -w PKGBUILD"
alias wget="wget --hsts-file=$XDG_CACHE_HOME/wget-hsts"
alias svn="svn --config-dir $XDG_CONFIG_HOME/subversion"
alias pomo="pomo --path $XDG_CONFIG_HOME/pomo"
alias tmux="tmux -f $XDG_CONFIG_HOME/tmux/tmux.conf"
alias gpg="gpg --homedir $XDG_DATA_HOME/gnupg"
