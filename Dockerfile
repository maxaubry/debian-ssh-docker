FROM debian:wheezy
MAINTAINER maxime Aubry <m.aubry@hexanet.fr>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update

RUN apt-get install -y openssh-server
RUN mkdir -p /var/run/sshd

RUN useradd -m -d /home/hexanet -s /bin/bash hexanet

RUN echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC5p+1qXm/I5rDhaP3ZEAOxD2d97cAtBkWgLdMJpVMJdBCdy1wRioD/hx7tFZ7xLLpCZIr/YSYSwMLIol9QQl/p+fB3U//KieJJDf55fygH9WFZ31Oz9dNIcm4qqnK62fpoEAbL+siiwEiruITqnJmnYl8m3VtYbE21JlcmtQ5jeqA7emwBUKohdXi/GyysSVC8UGwKFfUZoo67jVuw9mFHe6FrrbgRpevZARnFS8ze4QqTG7FaFhCd7dBrebzI0CLGgDEQzQNXzRy39Uzz0vf92iWYCY5LKszP1I2DhfbX9vcJexU6uSTjIsAa4dRB6GFxrJ7QSersIiWMjrg2iF8B max@Ansible-1" >> /home/hexanet/.ssh/authorized_keys

EXPOSE 22

CMD /usr/sbin/sshd -D

