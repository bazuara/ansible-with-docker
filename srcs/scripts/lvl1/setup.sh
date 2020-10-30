#!/bin/bash
ssh-keygen -q -t rsa -N '' -f /home/ender_wiggin/.ssh/id_rsa
echo -e "Host * \n \tStrictHostKeyChecking no" > .ssh/config
sshpass -p ender ssh-copy-id ender@bajovnick_1 -p 22
sshpass -p ender ssh-copy-id ender@bajovnick_2 -p 22
sshpass -p ender ssh-copy-id ender@bajovnick_3 -p 22
