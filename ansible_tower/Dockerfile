FROM debian:buster

# Install Ansible
RUN apt update
RUN apt install -y ansible

# Install SSH service
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd

# Create non privileged user
RUN useradd -m ender
RUN echo 'ender:ender' | chpasswd

# Install sudo and add new user to sudoers
RUN apt install -y sudo
RUN adduser ender sudo

# expose ssh port
EXPOSE 22

# Run SSH daemon
CMD ["/usr/sbin/sshd", "-D"]
