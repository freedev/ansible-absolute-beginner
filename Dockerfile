FROM centos:7

MAINTAINER Vincenzo D'Amore <v.damore@gmail.com>

RUN yum -y update
RUN yum -y install rsync
RUN yum -y install ansible
RUN yum -y install openssh openssh-server openssh-clients openssl-libs net-tools passwd

RUN mkdir /var/run/sshd

RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ''

ADD create-user.sh /create-user.sh

RUN chmod 755 /create-user.sh

RUN ./create-user.sh

ADD docker-entrypoint.sh /docker-entrypoint.sh

EXPOSE 22

# ADD main.py /main.py

# ENTRYPOINT  ["/docker-entrypoint.sh"]

# CMD ["python", "/main.py"]
