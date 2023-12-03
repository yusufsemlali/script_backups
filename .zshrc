if [[ "$TERM_PROGRAM" == "iTerm.app" ]]; then
    cd /Users/ysemlali/Desktop
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH="/Users/ysemlali/goinfre/homebrew/bin:$PATH"

# Define PATH
export PATH="/Users/ysemlali/goinfre/homebrew/bin:$(brew --prefix)/bin:$(brew --prefix oh-my-posh)/bin:$HOME/goinfre/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/munki:$PATH"

plugins=(git)

source $ZSH/oh-my-zsh.sh

eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/M365Princess.omp.json)"

alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
alias francinette="$HOME/francinette/tester.sh"
alias cleaks="$HOME/ysf_scripts/leaks_check.sh"
alias ls='ls -a'
alias rmr='rm -rf'
alias rmf='rm -f'
alias c='clear'
alias ccw='cc -Wall -Werror -Wextra'

function gcc_includes() {
    cc -H $1 2>&1 | grep '^\.\s'
}

function start_fswatch() {
        h /Users/ysemlali/script_backup.sh
}


alias cci=gcc_includes
alias fsw=start_fswatch
alias paco="$HOME/francinette/tester.sh"
export PYTHONPATH=~/local/bin/python3
alias format='python3 -m c_formatter_42'
source ~/.42-wizzard.sh
zsh ~/.42-wizzard-updater.sh
