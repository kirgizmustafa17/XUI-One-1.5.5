FROM ubuntu:20.04

RUN apt update -y
RUN apt install vnstat -y
RUN apt install wget aria2 unzip jq nano python3 -y
RUN apt clean -y

RUN wget https://update.xui.one/XUI_1.5.5.zip
RUN unzip XUI_1.5.5

RUN apt install iproute2 python net-tools dirmngr gpg-agent software-properties-common libmaxminddb0 libmaxminddb-dev \
              mmdb-bin libcurl4 libgeoip-dev libxslt1-dev libonig-dev e2fsprogs wget sysstat alsa-utils \
              v4l-utils mcrypt certbot iptables-persistent libjpeg-dev libpng-dev php-ssh2 xz-utils zip unzip
