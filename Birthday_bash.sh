#!/bin/bash

# Author: Shefali Kumari
# Copyright (c) 2021 Sefali Kumari
# Script follows here:
# below colors are to beautify texts-----------more colors can be added here
red=`echo -en "\e[31m"`
#orange='echo -en "\e[33m"`
blue=`echo -en "\e[34m"`
purple=`echo -en "\e[35m"`
aqua=`echo -en "\e[36m"`
normal=`echo -en "\e[0m"`
darkgrey=`echo -en "\e[90m"`
lightred=`echo -en "\e[91m"`
lightyellow=`echo "\e[93m"`

echo -n "Enter your birthday name: "
read name
#figlet -f slant "message"
figlet "Happy   Birthday  $name" | lolcat   #To beautify your birthday text use figlet with lolcat
echo ""
echo "Please Select from below options to make your Birthday Special :) "   # Select menu is listed here
echo""
echo "${blue}To read Greetings select 1: "
echo "To read wishes & Blessings select 2: "
echo "To view photos select 3: "
echo "To listen audio wishes select 4: "
echo "To read notes from your secret admirer select 5: "
echo "$normal"
echo""
echo -n "Please Enter your choice [1-5]: " 

while : # while loop is used to continue with your select menu until you exit using n
do
read choice
echo""

case $choice in
	1)
		echo "You chose option 1: "
		sh /home/kali/Birthday_bash/greetings.sh   # provide path of greeting.sh as located in your system and contents of greetings.sh can be modified 
		python3 heart.py                            # prints heart shape using python3 with turtle, heart colors can be modified in heart.py file
		;;
	2)

		echo "You chose option 2:"
		while read line
		do
		echo ${red}$line
		echo "$normal"
		done < /home/kali/Birthday_bash/wishes.txt    # provide path of wishes.txt as located in your system and contents of wishes.txt can be modified 
		;;
	3)

		echo "You chose option3: "
		sh /home/kali/Birthday_bash/imagerun.sh    # provide path of imagerun.sh as located in your system and can replace sample images with yours
		jp2a sample3.jpg --colors	          # replace sample image files with your selected images
		jp2a sample2.jpg --colors
		jp2a sample4.jpg --colors                 # you can increase/decrese the number of jp2a <any image file> from 3 to 7 or 3 to 1 as only three 
		;;                                        # image files are mentioned here

	4)

		echo "You chose option 4: "
		python3 audio.py              # replace sample audio file with your selected audio file
		;;
	
	5)

		echo "You chose option 5:"
		for i in {1..5}
		do
		echo "Bless you, enjoy your day $name" | lolcat     # contents can be modified here
		done
		;;

	*) 

		echo "You entered invalid option!!"
		;;
esac
echo -n "Do you want to Continue? (y/n): "       # If you wish to continue with select menu
read answer
case "$answer" in
	y)
		echo -n "Please Enter you choice again [1-5]: "
		continue
		;;
	n)
		echo "You requested to exit :( "           # this exits from the script
		exit
		;;

esac
done


