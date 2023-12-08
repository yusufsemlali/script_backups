# Valgrind on macOS with fsanitize protection
# Usage: valgrind_macos ./ft_ls -l /tmp ~
# You must use "./" to specify executable file
function valgrind_macos ()
{
	local i
	for i in "$@"; do
		if [[ $i == ./* ]]; then
			cmd=$(nm -an $i | grep asan)
			if [[ $? == 0 ]]; then
				echo -e "\033[0;91mYou are trying to run valgrind but you compiled with -fsanitize. \033[1;31mNEVER do this on macOS\033[0;91m, this will crash you computer.\033[0;39m"
			else
				command valgrind $*
			fi
			break
		fi
	done
}

# Default alias on valgrind_macos
alias valgrind='valgrind_macos'
