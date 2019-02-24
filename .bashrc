#
# ~/.bashrc
#
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias np='nano -w PKGBUILD'
alias more=less

export RANGER_LOAD_DEFAULT_RC=FALSE
export EDITOR=emacsclient
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Programming/Python
#source /usr/bin/virtualenvwrapper.sh

(cat ~/.cache/wal/sequences &)
exec fish
