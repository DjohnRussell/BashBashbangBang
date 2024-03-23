#!/bin/bash

# Display script name

echo "-----------------------------"
echo "         Bash Butler         "

sleep 0.5

# Display butler choises
echo "-----------------------------"

sleep 0.5

echo "        1 - Internett        "
sleep 0.5
echo "        2 - Software         "
sleep 0.5
echo "        3 - File             "
sleep 0.5
echo "        4 - Open App         "

# users input
read num

# Clear screen  
clear

# Cases based on the user choise

case $num in 
	1)
		echo "        Internett Manageer        "
		echo "                                  "
		echo "        1 - New Search        "
		echo "        2 - Google        "
		echo "        3 - ChatGPT        "
		read name
			case $name in 
				1)
					clear
					echo "        Whitch site:        "
					read name
					open https://www.$name.com
					echo "opening site: $name "
					;;
				2)
					open https://www.google.com
					;;
				3)
					open https://chat.openai.com
					;;	
			esac
				;;					

	2)
		clear
		echo "1 - Linux"
		sleep 0.5
		echo "2 - Mac"
		sleep 0.5
		read number

		case $number in
			1)
				clear
				echo "Linux"
				echo "Name of the software"
				read softwareName
				clear
				sudo apt-get install $softwareName
				;;
			2)
				clear
				echo "Mac"
				echo "Name of the software"
				read softwareName
				clear
				brew install $softwareName
				echo "$softwareName is installed"
				;;
		esac

		;;
	


	3)
		echo "file name:"
		read name
		touch $name.txt
		nano $name.txt
		;;

	4)

		echo "Which App : "
		read appName
		open -a $appName
		;;
esac
