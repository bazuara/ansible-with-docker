#!/bin/bash
clear
cat ./srcs/ascii_starfleet_logo.txt
echo -e "Welcome to the starship federation training program!\n"
read -p "Press any key to continue" -n 1 -r
clear
echo -e "Welcome! Please, select one option:\n"
echo -e "0. Deploy 1 ansible philote and 1 Starfigther. (Lvl. 0)\n"
echo -e "1. Deploy 1 ansible philote and 3 equals Starfigthers. (Lvl. 1)\n"
echo -e "2. Deploy 1 ansible philote and 3 different Starfigthers . (Lvl. 2)\n"
echo -e "3. Deploy 1 ansible philote and 9 different Starfigthers, 3 squads. (Lvl. 3)\n"
echo -e "9. Desert and destroy!\n"
read -p "Option: (0/1/2/3/9)" num
case $num in
	[0]* ) clear; echo -e "Option 0 selected.\nWe will create the containers.\nPlease, be patient, this could take some time";\
		echo -e "Building Ansible_philote...\n";\
		docker build ./ansible_philote/ -t ansible_philote > /dev/null;\
		echo -e "Building Bajovnick...\n";\
		docker build ./starfighter/bajovnick -t bajovnick > /dev/null;\
		docker-compose -f ./composes/docker-compose-lvl0.yaml up -d \
	   	--remove-orphans > /dev/null;
		clear; \
		cat ./srcs/subject_lvl0.md;;
	[1]* ) clear; echo -e "option 1 selected.\nWe will create the containers.\nPlease, be patient, this could take some time";\
		echo -e "Building Ansible_philote...\n";\
		docker build ./ansible_philote/ -t ansible_philote > /dev/null;\
		echo -e "Building Bajovnick...\n";\
		docker build ./starfighter/bajovnick -t bajovnick > /dev/null;\
		docker-compose -f ./composes/docker-compose-lvl1.yaml up -d \
	   	--remove-orphans > /dev/null;
		clear; \
		cat ./srcs/subject_lvl1.md;;
		# docker build ./ansible_philote/ -t ansible_philote;\
		# docker build ./starfighter/bajovnick -t bajovnick;\
		#docker-compose -f ./composes/docker-compose-lvl1.yaml up -d --remove-orphans;;
	[4]* ) clear; echo -e "\n\n\nThere´s no option 4!\nEither fight or flight!";;
	[9]* ) clear;\
		docker stop ansible_philote 2> /dev/null;\
		docker stop bajovnick 2> /dev/null;\
		docker stop bajovnick_1 2> /dev/null;\
		docker stop bajovnick_2  2> /dev/null;\
		docker stop bajovnick_3 2> /dev/null;\
	   	echo -e "Goodbye then you f#king deserter!";;
esac
read -p "Press enter to exit"
