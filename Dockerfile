FROM debian:wheezy
MAINTAINER maxime Aubry <m.aubry@hexanet.fr>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update

RUN apt-get install -y openssh-server
RUN mkdir -p /var/run/sshd

EXPOSE 22

CMD /usr/sbin/sshd -D

