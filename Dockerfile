FROM debian:wheezy
MAINTAINER maxime Aubry <m.aubry@hexanet.fr>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update

RUN apt-get install -y openssh-server
RUN mkdir -p /var/run/sshd

RUN useradd -m -d /home/hexanet -s /bin/bash hexanet

RUN mkdir -p /home/hexanet/.ssh

RUN echo "ssh-dss AAAAB3NzaC1kc3MAAACBAJVq9NCls2TJm8/wAJM7PhcOUz8cctNwiZoM3EXJ4u0wa6UAD7asXx5xZ0Pso6UeCCJG4Mg2Y/Q/CkXv6fQt9L+8um/mCrSC2KaLkbHpwm9nHweTQYUOJ7tA+NQrJuJFP27yuvBD0wUYdyayFPPgVqv5SlwdFAlEH5m48fD47Uw7AAAAFQD20W7xjPa45LvoCzNjFEw854I8sQAAAIBpDzl3iQ533NmLoni8FFc4KlblDK6uDG70K+HXbK8u3AN7wZVg5XxAL39PcZRYWVa4bGnrNF4il8vhcjVu1pvNjnP/LvnCMJf2QCcL9yK+e/MKdl/N0D/QF2fTdbmaSF6+r3uRU6rvFBBvN36WYU68kyXRmy0FhA1qK+mzVO72QwAAAIBWUp0C/0FollmiamAsd74B9ph+erLI3NJdjgWhlmaIvPg8wMtzkf7hEDYF4F5GxybZejaaXoNq83Ov6qvVblyURTnMdVCg7s03I4rmF7FQFl94aytE0l8l/b4d4TBdeOtzuUEiLsDGiPLmCXHW0gOg/AdI4vKC9x8BKnKEGokMsw== locatel@nuala" >> /home/hexanet/.ssh/authorized_keys

EXPOSE 22

CMD /usr/sbin/sshd -D

