# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    .zshrc                                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: shams </var/spool/mail/shams>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/14 22:47:28 by shams             #+#    #+#              #
#    Updated: 2024/10/14 23:02:39 by yourLogin        ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Author: Yusuf Semlali
if [[ "$TERM_PROGRAM" == "iTerm.app" ]]; then
    cd /Users/ysemlali/Desktop
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:/home/shams/.local/bin
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh



if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

### ALIASES ###

#list
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -alFh'
alias l='ls'
alias l.="ls -A | egrep '^\.'"

#fix obvious typo's
alias cd..='cd ..'
alias pdw='pwd'
alias udpate='sudo pacman -Syyu'
alias upate='sudo pacman -Syyu'
alias updte='sudo pacman -Syyu'
alias updqte='sudo pacman -Syyu'
alias upqll='paru -Syu --noconfirm'
alias upal='paru -Syu --noconfirm'

#shutdown or reboot
alias ssn="sudo shutdown now"
alias sr="sudo reboot"


#custom
alias script_b="sh /Users/ysemlali/script_backup.sh"
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
alias paco="$HOME/francinette/tester.sh"
alias format='python3 -m c_formatter_42'
alias norms="norminette"
alias v="nvim"
alias b="nvim ~/.bashrc"
alias z="nvim ~/.zshrc"
alias vl="valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes --log-file=$HOME/.var/valgrind_log/valgrind.log"
vb() {
    local prev_dir="$PWD"   # Store the current directory
    cd ~/.var/valgrind_log/  # Change to the desired directory
    nvim valgrind.log        # Open the log file
    cd "$prev_dir"           # Return to the previous directory
}
cci(){
        ccw "$1" -H 2>&1 | grep -E '^\.\.?\s'
}
[[ -f ~/.bashrc-personal ]] && . ~/.bashrc-personalexport PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"



# 42 header
export USER="ysemlali"
export MAIL="ysemlali@student.1337.ma"

message="Hello, World! 👋"
