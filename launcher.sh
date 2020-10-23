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
echo -e "x. Desert and destroy!\n"
read -p "Option: (0/1/2/3/x)" num
case $num in
	[0]* ) clear; echo -e "Option 0 selected.\nWe will create the containers.\nPlease, be patient, this could take some time";\
		echo -e "Building Ansible_philote...\n";\
		docker build ./starfighter/ansible_philote/ -t ansible_philote > /dev/null;\
		echo -e "Building Bajovnick...\n";\
		docker build ./starfighter/bajovnick -t bajovnick > /dev/null;\
		docker-compose -f ./composes/docker-compose-lvl0.yaml up -d \
	   	--remove-orphans > /dev/null;
		read -p "Press any key to continue to debriefing" -n 1 -r
		clear; \
		cat ./srcs/subject_lvl0.md;;
	[1]* ) clear; echo -e "Option 1 selected.\nWe will create the containers.\nPlease, be patient, this could take some time...";\
		echo -e "Building Ansible_philote...\n";\
		docker build ./starfighter/ansible_philote/ -t ansible_philote > /dev/null;\
		echo -e "Building Bajovnick...\n";\
		docker build ./starfighter/bajovnick -t bajovnick > /dev/null;\
		docker-compose -f ./composes/docker-compose-lvl1.yaml up -d \
	   	--remove-orphans > /dev/null;
		read -p "Press any key to continue to debriefing" -n 1 -r
		clear; \
		cat ./srcs/subject_lvl1.md;;
		# docker build ./ansible_philote/ -t ansible_philote;\
		# docker build ./starfighter/bajovnick -t bajovnick;\
		#docker-compose -f ./composes/docker-compose-lvl1.yaml up -d --remove-orphans;;
	[4]* ) clear; echo -e "\n\n\nThere´s no option 4!\nEither fight or flight!";;
	[x]* ) clear;\
		# 
		# stop and destroy ansible_philote
		#
		docker stop ansible_philote &> /dev/null;\
		docker rm ansible_philote &> /dev/null;\
		#
		# stop and destroy bajovnick	
		#
		docker stop bajovnick &> /dev/null;\
		docker rm bajovnick &> /dev/null;\
		#
		# stop and destroy bajovnick_1
		#
		docker stop bajovnick_1 &> /dev/null;\
		docker rm bajovnick_1 &> /dev/null;\
		#
		# stop and destroy bajovnick_2
		#
		docker stop bajovnick_2 &> /dev/null;\
		docker rm bajovnick_2 &> /dev/null;\
		#
		# stop and destroy bajovnick_3
		#
		docker stop bajovnick_3 &> /dev/null;\
		docker rm bajovnick_3 &> /dev/null;\
		#
		# Delete base images
		#
		docker image rm ubuntu &> /dev/null
		docker image rm centos:8 &> /dev/null
		docker image rm bajovnick:latest &> /dev/null
		docker image rm ansible_philote &> /dev/null
	   	echo -e "Goodbye then you f#king deserter!";;
esac
read -p "Press enter to exit"
