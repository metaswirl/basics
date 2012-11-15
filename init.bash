#!/bin/bash
DIR=$1
OWN_NAME="init.bash"

[ -z $DIR ] && DIR="$PWD"
if [ ! -e $DIR/$OWN_NAME ]; then
    echo "ERROR: Please start the script from its directory
OR add the path to the directory as a parameter"
    exit 1
fi
echo "start of script in $DIR" 

for el in $(ls $DIR | grep -v "init.bash\|Readme"); do
	if [ -L $HOME/.$el ]; then
        echo "making symbolic link for $el"
		rm $HOME/.$el
        ln -s $DIR/$el $HOME/.$el
    elif [ -e $HOME/.$el ]; then
        echo -e "You have an existing version of $el.\nDo you want to overwrite it? (y/n)"
        read CHOICE
        if [[ ${CHOICE[1]} = 'y' || ${CHOICE[1]} ='Y' ]]; then
            echo "overwriting existing version of $el" 
            rm $HOME/.$el
            ln -s $DIR/$el $HOME/.$el
        fi
	else
        echo "making symbolic link for $el"
        ln -s $DIR/$el $HOME/.$el
    fi
done

echo "end of script"
