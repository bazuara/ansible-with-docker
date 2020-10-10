# LORE
# The Bajovnik is an International Fleet ship captained by Merryweather.
# Transport class starfighter, equiped with simple defensive weapons.
# Equipped with an ansible on board.
# Currently stationed near the Kuiper Belt.
# LORE
#
FROM centos:8

# Install SSH service
RUN yum -y update
RUN yum install -y openssh-server
RUN mkdir /var/run/sshd
RUN /usr/bin/ssh-keygen -A
RUN rm -f /run/nologin

# Create non privileged user
RUN useradd -m ender
RUN echo 'ender:ender' | chpasswd

# Install sudo and add new user to sudoers
RUN yum install -y sudo
RUN usermod -aG wheel ender

# Create folder structure
RUN mkdir /samples
RUN echo 'Starfighter Bajovnick reporting for dutty sir' > /samples/index.html

# expose ssh port
EXPOSE 22 80

# Run SSH daemon
CMD ["/usr/sbin/sshd", "-D"]
