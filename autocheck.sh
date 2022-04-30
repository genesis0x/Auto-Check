#!/bin/bash
clear
echo -e "\033[36mSelect project to grade:\033[0m"
select PROJECT in $(ls -d */ | sed 's_/$__' | sed 's_.*/__'); do
	[[ -z $PROJECT ]] && { echo -e >&2 "\033[31mERROR:\033[0m Bad option"; exit 1; } || break
done
echo -e "\033[36mYou selected \033[33m$PROJECT\033[36m. Select exercise to grade:\033[0m"
select EXERCISE in $(ls -d $PROJECT/*/ | sed 's_/$__' | sed 's_.*/__'); do
	[[ -z $EXERCISE ]] && { echo -e >&2 "\033[31mERROR:\033[0m Bad option"; exit 2; } || break
done
echo -e "\033[36mYou selected \033[33m$EXERCISE\033[36m.\033[0m"
WORKDIR=$PROJECT/$EXERCISE
norminette -R CheckForbiddenSourceHeader $WORKDIR/*.c | sed '1d' > $WORKDIR/norminette_output
echo -e "\033[36mDownloading test files..\033[0m"
[[ $PROJECT != C06 ]] && curl "github.com/JOXBOX/Auto-Check/$WORKDIR/{main.c,test_output}" -o $WORKDIR/#1 || curl "github.com/JOXBOX/Auto-Check/$WORKDIR/test_output" -o $WORKDIR/test_output
gcc -Wall -Wextra -Werror $WORKDIR/*.c -o $WORKDIR/$EXERCISE
echo -e "\033[36mGrading \033[33m$WORKDIR\033[36m..\033[0m"
[[ $PROJECT != C06 ]] && $WORKDIR/$EXERCISE > $WORKDIR/user_output || { ARGV="aBc Cab bcA aBc1"; $WORKDIR/$EXERCISE $ARGV > $WORKDIR/user_output; }
echo -en "\033[33m$WORKDIR: \033[0m"
cmp -s $WORKDIR/test_output $WORKDIR/user_output && echo -en "\033[32mOK\033[0m" || echo -en "\033[31mKO\033[0m"
echo -en "\033[36m, \033[33mNorme: \033[0m"
[[ ! -s $WORKDIR/norminette_output ]] && echo -e "\033[32mOK\033[0m" || echo -e "\033[31mKO\033[0m"
[[ ! -z $1 ]] && [[ $1 == keep ]] && echo -e "\033[36mKeeping test files in \033[33m$WORKDIR/\033[36m..\033[0m" || { rm -f $WORKDIR/$EXERCISE $WORKDIR/test_output $WORKDIR/user_output $WORKDIR/norminette_output; [[ $PROJECT != C06 ]] && rm $WORKDIR/main.c; }
