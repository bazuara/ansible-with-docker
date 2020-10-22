Welcome to your second exercise!
In this level, you are going to learn to connect and install software from the
captains ship to three simultaneous Bajovnick-type starfighters.

--Bajovnick lore goes here--

For this exercise you already have a provisioned inventory,
located in /etc/ansible inside your philote container.

These are the steps you are going to need to reproduce:

Preparation:

- Connect to your captains console (ssh ender@localhost -p 8022) Remember,
  your ultra secure military-grade encrypted user:password is ender:ender
- Generate your captains credentials (ssh-keygen).
- Send your credentials to the commanded ships (ssh-copy-id ender@bajovnick_1, 2, 3).
- Test secure connections (ssh ender@bajovnick 1, 2 and 3 without a password).
- For your convenience, there is a script to automate this task in /scripts inside
  your commander ship

Subject:

- As the Bajovnick class ships are mainly communications ships, you need to
  command the ship to relay and broadcast information signals. All of the 
  followings orders should be completed:
  	- For security reasons, disable the ssh-login with password 
	  (lineinfile module) 
	- Ping the Bajovnick ship 
	  (ping module)
	- Get the Bajovnick system status
	  (setup module)
	- Install nginx server
	  (yum module)
	- Delete the /usr/share/nginx/html/index.html file
	  (shell module)
	- Link the /sample/index.html to
	  /usr/share/nginx/html/index.html
	  (shell module)
	- Edit the /usr/share/nginx/html/index.html to print the ships hostname
	  (lineinfile module)
	- Start the nginx server.

- No single command will be allowed, you need to reproduce all the instructions 
  *within a single playbook*.

- No answer file will be provided this time, it either works or it doesn´t, 
  the life of the crews depend´s on your success.

- This is the last time you will receive module names, this is the real life soldier!

- To end your second assignment, you need to communicate the proper message as
  an international fleet officer (check http://localhost:8081 8082 and 8083)

- Check everything is ok and destroy everything after

- For stability purposes, we recomend to perfom a docker system prune -a 
  after stoping the starfighter containers. Be carefull with this command
