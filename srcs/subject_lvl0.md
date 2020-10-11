Welcome to your first exercise!
In this level, you are going to learn to connect and install software from the
captains ship to a Bajovnick type starfighter.

--Bajovnick lore goes here--

For this exercise you already have a provisioned inventory,
located in /etc/ansible inside your philote container.

These are the steps you are going to need to reproduce:

Preparation:

- Connect to your captains console (ssh ender@localhost -p 8022) Remember,
  your ultra secure military-grade encrypted user:password is ender:ender
- Generate your captains credentials (ssh-keygen).
- Send your credentials to the commanded ships (ssh-copy-id ender@bajovnick).
- Test secure connections (ssh ender@bajovnick without a password).

Subject:

- As the Bajovnick class ships are mainly communications ships, you need to
  command the ship to relay and broadcast information signals. All of the 
  followings orders should be completed:
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
	- Start the nginx server.
- Don´t worry about a playbook, simple commands will suffice for this level
- To end your first assignment, you need to communicate the proper message as
  an international fleet officer (check http://localhost:8081)
- Check everything is ok and destroy everything after

- For stability purposes, we recomend to perfom a docker system prune -a 
  after stoping the starfighter containers. Be carefull with this command

- If you have some doubts, all the correct scripts are stored inside /etc/ansible/answers.txt


