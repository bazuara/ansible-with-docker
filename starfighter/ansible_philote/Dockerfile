FROM ubuntu:latest

# Install Ansible
RUN apt update
RUN apt install -y ansible > /dev/null

# Install SSH service
RUN apt-get install -y openssh-server
RUN apt-get install -y openssh-client
RUN mkdir /var/run/sshd

# Create non privileged user
RUN useradd -m ender_wiggin
RUN echo 'ender_wiggin:ender' | chpasswd

# Install sudo and add new user to sudoers
RUN apt install -y sudo
RUN adduser ender_wiggin sudo

# Install zsh for a better control of the system
RUN apt-get install -y zsh
RUN sudo chsh -s $(which zsh) ender_wiggin
RUN touch /home/ender_wiggin/.zshrc

# Install editing tools
RUN apt-get install -y vim

# expose ssh port
EXPOSE 22

# Run SSH daemon
CMD ["/usr/sbin/sshd", "-D"]
