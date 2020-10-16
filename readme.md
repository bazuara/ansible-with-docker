## Learn ansible with docker

![](./srcs/png_internationalfleet_logo.png)

(Read with Mazer Rackham´s voice)

Welcome to the International Fleet officer trainer simulator! Where we thin out the future officers from the herd! We will prepare you to send commands across the galaxy to multiple starfigthers at the same time, to defeat those formic b#stards!

(Lore will continue)

This labs consists of two kinds of containers:

 * ansible_philote: To give commands
 * Starships: To receive commands across the galaxy

To start run in a terminal window:

``` 
bash ./launcher.sh
```
And follow the on-screen instructions.

In every ansible commander machine, the persisten folder will be /etc/ansible, and it will be stored outside the containers, in your local file etc_ansible/lvl*

## Exercises subjects:


[Level 0](./srcs/subject_lvl0.md)

[Level 1](./srcs/subject_lvl1.md)

## This is still a work in progress

There is some stuff to do yet...

### To-do
 - [x] Create ansible_philote image
 - [x] Create launcher script
 	- [x] Build images and launch docker-compose
 - [x] Create docker-compose.yaml
 	- [x] Working with ansible_philote
 	- [x] Working with ~~starfighter 1~~ Bajovnick
 	- [ ] Working with ~~starfighter 2~~ Herodotus
 	- [ ] Working with ~~starfighter 3~~ Makarhu
 	- [x] Find cool names for starfigthers
 - [x] Create some cool asci art
 - [ ] Create starfighter structures
 	- [x] Bajovnick (HTML)
	- [ ] Herodotus (Databases)
	- [ ] Makarhu (User tools)
 - [x] Create dificulty levels
 	- [x] Lvl 0. 1 Remote ship, same ship model
	- [x] lvl 1. 3 remote ship, same ship model
	- [ ] lvl 2. 3 remote ship, different ship model
	- [ ] lvl 3. 9 remote ship, different ship model in squads
 - [x] Integrate dificulty levels in launcher
 - [ ] Integrate scripts to generate and deploy ssh keys
 	- [x] script for lvl.0
 	- [x] script for lvl.1
 	- [ ] script for lvl.2
 	- [ ] script for lvl.3
 - [ ] Create exercises and narrative FFS!!!!
