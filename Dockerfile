FROM debian:wheezy
MAINTAINER maxime Aubry <m.aubry@hexanet.fr>

ENV DEBIAN_FRONTEND noninteractive

EXPOSE 22

CMD /usr/sbin/sshd -D

