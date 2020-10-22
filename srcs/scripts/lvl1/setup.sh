#!/bin/bash
ssh-keygen -q -t rsa -N '' -f /home/enderi_wiggin/.ssh/id_rsa
ssh-copy-id ender@bajovnick_1
ssh-copy-id ender@bajovnick_2
ssh-copy-id ender@bajovnick_3
