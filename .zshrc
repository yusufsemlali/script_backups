# Author: Yusuf Semlali
if [[ "$TERM_PROGRAM" == "iTerm.app" ]]; then
    cd /Users/ysemlali/Desktop
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh



# theme for oh-my-posh

# homebrew path & cloud path
export PATH=~/Library/Mobile\ Documents/com~apple~CloudDocs/homebrew/bin:/Users/ysemlali/goinfre/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/munki:/goinfre/ysemlali/homebrew/bin:/Users/ysemlali/goinfre/homebrew/bin
export PATH="$PATH:~/Library/Mobile Documents/com~apple~CloudDocs"


function gcc_includes() {
    cc -H $1 2>&1 | grep '^\.\s'
}
function script_b() {
    sh /Users/ysemlali/script_backup.sh
}


#aliases
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
alias format='python3 -m c_formatter_42'
export PYTHONPATH=~/local/bin/python3

#defaults 
defaults write -g KeyRepeat -int 1 # Set key repeat speed to fastest
defaults write -g InitialKeyRepeat -int 10 # Set delay until key repeat starts to shortest
defaults write -g ApplePersistence -bool no # Prevent apps from re-opening at startup
brightness 1
source ~/.42-wizzard.sh



