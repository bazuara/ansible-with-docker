#!/bin/bash
ssh-keygen -q -t rsa -N '' -f /home/ender_wiggin/.ssh/id_rsa
echo -e "Host * \n \tStrictHostKeyChecking no" > .ssh/config
sshpass -p ender ssh-copy-id ender@bajovnick -p 22
#ssh-copy-id ender@bajovnick
