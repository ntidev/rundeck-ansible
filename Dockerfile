FROM rundeck/rundeck:3.1.3

USER root
# Install Ansible
RUN echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 40976EAF437D05B5
RUN apt update && apt install ansible rsync -y

ENTRYPOINT [ "/tini", "--", "docker-lib/entry.sh" ]
