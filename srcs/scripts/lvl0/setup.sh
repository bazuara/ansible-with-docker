#!/bin/bash
ssh-keygen -q -t rsa -N '' -f /home/ender/.ssh/id_rsa
ssh-copy-id ender@bajovnick
