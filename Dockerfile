FROM debian:wheezy
MAINTAINER maxime Aubry <m.aubry@hexanet.fr>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update

RUN apt-get install -y openssh-server
RUN mkdir -p /var/run/sshd

RUN useradd -m -d /home/hexanet -s /bin/bash hexanet

RUN mkdir -p /home/hexanet/.ssh

RUN echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDc/HDOYzIXzH7m30dJhfl6d391Qh8430MDebv6x/ZU0iGmOqYosIrajVvG4Ou3LfCRxlu7JlNnpJMOnH4QRonCemF2QT587fcJA5nzzYSWbA6gKjM2TwamMojXj3C5b+m9MhqgX3P9hFTJtAA+SoywMEKUokNqU5msDh5VNCFJB2Nly7SVcg3gHtehaXWbKcqZGP9omRb2TTUYdRIC8jn1reKvykEvu0w0IxMjnn3CZOZ0De/e9/OM6uV4TWL+tCZTckH+HLq+1+CoLs3OnRnKMkkjLZTez4+/LIEd0njm7mbWFyHyIo6ZdgUTTM/vU1ls39CQTJZJ7id4zpeInziR max@debian" >> /home/hexanet/.ssh/authorized_keys

EXPOSE 22

CMD /usr/sbin/sshd -D

