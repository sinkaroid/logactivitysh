#!/bin/bash

#simply bash to get your activity from fb, useful if u are like or react lewd/hentai images from facebook timeline 
#grep -Po 'menyukai <a href="\K.*?(?=")' > links.txt; #u do (adjust yourcode here if necessary)
RED=$(tput setaf 1) 
GREEN=$(tput setaf 2) 
CYAN=$(tput setaf 6) 
WHITE=$(tput setaf 7) 


begin=$(date +"%s")

echo "![facebook logactivitysh]!"

read -p "${WHITE}ur file: " kode
echo -e "\n"
read -p "${WHITE}${kode} Continue? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
echo -e "reading source for /${GREEN}$kode.html ..
${WHITE}"


cat ${kode}.html | grep -Po 'menyukai <a href="\K.*?(?=")' > links.txt; #u do
echo "filtered.. ${GREEN}links.txt"

termin=$(date +"%s")
difftimelps=$(($termin-$begin))
echo "${WHITE}$(($difftimelps / 60)) minutes and $(($difftimelps % 60)) sec. elapsed"