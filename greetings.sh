#!/bin/bash

# below colors are for texts------------more color codes can be added here
red=`echo "\e[31m"`
#orange='echo -en "\e[33m"`
blue=`echo "\e[34m"`
purple=`echo "\e[35m"`
aqua=`echo "\e[36m"`
normal=`echo "\e[0m"`
darkgrey=`echo "\e[90m"`
lightred=`echo "\e[91m"`
lightyellow=`echo "\e[93m"`
#below colours are for background---------
#RED=`echo -en "\e[41m"`
#ORANGE=`echo -en "\e[43m"`
#BLUE=`echo -en "\e[44m"`
#PURPLE=`echo -en "\e[45m"`
#AQUA=`echo -en "\e[46m"`
#LIGHTRED=`echo -en "\e[101m"`
echo -n "Enter your name again: "
read namee
echo ""
echo  "${purple}Happy Birthday $namee, many many happy returns of the day. I wish you achieve whatever you aspire for in life, Bless you with lots of lOVE"
echo "$normal"             # $normal will bring back your color-highlighted texts to its normal text color


