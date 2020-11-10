FROM docker.pkg.github.com/dock0/amylum_arch/amylum_arch:20201110-7ee54d8
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm s6 execline musl-amylum
ADD service /service
ADD init /init
CMD ["/init"]
