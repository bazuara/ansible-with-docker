#!/bin/bash
clear
cat ./srcs/ascii_starfleet_logo.txt
#echo "Welcome to the starship federation training program!\n"
#read -p "Are you sure you want to enroll? (Yy/Nn) " -n 1 -r
#if [[ ! $REPLY =~ ^[Yy]$ ]]
#then
#    exit 1
#fi
echo "Welcome! Please, select one option:\n"
echo "1. Deploy ansible tower and Starfigthers.\n"
echo "2. no option avalible right now\n"
echo "3. Desert and destroy!\n"
read -p "Option: (1/2/3)" num
case $num in
	[1]* ) clear; echo "option 1 selected";\
		docker build ./ansible_tower/ -t ansible_tower;\
		docker-compose -f ./composes/docker-compose-lvl1.yaml up -d;;
	[2]* ) clear; echo -e "\n\n\nThere´s no option 2!\nEither fight or flight!";;
	[3]* ) clear; docker stop ansible_tower; echo "Goodbye then you f#king deserter!";;
esac
read -p "Press enter to exit"
