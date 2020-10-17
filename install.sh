#!/usr/bin/bash
# -*- coding: utf-8 -*-
#coded by deray and OneParsec
if [[ $EUID -ne 0 ]]; then
   echo -e "\033[31mThis script must be run as root"
   exit 1
fi
clear
echo ""
echo "   VCRT INSTALLER!"
echo 
echo "(1) Kali linux/Debian/Other"
echo "(2) Termux"
echo "(3) Gnuroot Debian"
echo "(4) Pydroid"
echo "(5) Arch Linux/Blackarch"
echo "(0) Exit"
echo
echo "Choose your distro : " | lolcat
read choose


if [ $choose = "01" ] || [ $choose = "1" ];
then
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install python-pip
sudo apt-get install git
echo
echo "Virus creator was installed!"
sleep 2
python2 vcrt.py
exit

elif [ $choose = "02" ] || [ $choose = "2" ];
then
apt-get update
apt-get upgrade
pkg install python2
pkg install git
echo
echo "Virus creator was installed!"
sleep 2
python2 vcrt.py
exit

elif [ $choose = "03" ] || [ $choose = "3" ];
then
apt-get update
apt-get upgrade
apt-get install python-pip
apt-get install git
echo
echo "Virus creator was installed!"
sleep 2
python2 vcrt.py
exit

elif [ $choose = "04" ] || [ $choose = "4" ];
then
python vcrt.py
exit


elif [ $choose = "05" ] || [ $choose = "5" ];
then
pacman -Syy
pacman -S python2
pacman -S python-pip
pacman -S git
python2 vcrt.py
exit

elif [ $choose = "00" ] || [ $choose = "0" ];
then
echo
echo "Bye!"
echo
exit

else
echo
echo "[!] Wrong Input..!"
echo
fi
