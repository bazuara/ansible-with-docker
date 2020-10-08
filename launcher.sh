#!/bin/bash
clear
cat ./srcs/ascii_starfleet_logo.txt
echo "Welcome to the starship federation training program!\n"
read -p "Are you sure you want to enroll? (Yy/Nn) " -n 1 -r
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi
cd ansible_tower
docker build . -t ansible_tower
cd -
docker-compose up -d
