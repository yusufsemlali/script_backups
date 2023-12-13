# Author: Yusuf Semlali
if [[ "$TERM_PROGRAM" == "iTerm.app" ]]; then
    cd /Users/ysemlali/Desktop
fi

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
export PATH=

# theme for oh-my-posh

plugins=(git)



function gcc_includes() {
    cc -H $1 2>&1 | grep '^\.\s'


function fsw() {
    sh /Users/ysemlali/script_backup.sh
}
alias notes_b="/Users/ysemlali/ysf_scripts/notes_backup.sh"
alias notes_r="/Users/ysemlali/ysf_scripts/notes_restore.sh"
alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
alias francinette="$HOME/francinette/tester.sh"
alias cleaks="$HOME/ysf_scripts/leaks_check.sh"
alias lls='ls -a'
alias rmr='rm -rf'
alias rmf='rm -f'
alias c='clear'
alias ccw='cc -Wall -Wextra -Werror'
alias cci=gcc_includes
alias paco="$HOME/francinette/tester.sh"
export PYTHONPATH=~/local/bin/python3
alias format='python3 -m c_formatter_42'


export PATH=~/goinfre/homebrew/bin:/Users/ysemlali/goinfre/homebrew/bin:/Users/ysemlali/goinfre/homebrew/bin:/goinfre/ysemlali/homebrew/bin/brew:/goinfre/ysemlali/homebrew/homebrew/Library/Homebrew:/goinfre/ysemlali/homebrew/homebrew/Library/Homebrew:/goinfre/ysemlali/homebrew/bin:/goinfre/ysemlali/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/munki:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/Users/ysemlali/goinfre/homebrew/bin:/Users/ysemlali/goinfre/homebrew/opt/oh-my-posh/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/munki
