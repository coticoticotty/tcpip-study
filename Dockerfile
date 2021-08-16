FROM --platform=linux/x86_64 ubuntu:18.04

RUN yes | unminimize
RUN apt-get update
RUN apt-get install -y locales \
    && locale-gen ja_JP.UTF-8
RUN apt-get install -y coreutils \
    grep \
    iproute2 \
    iputils-ping \
    traceroute \
    tcpdump \
    bind9 dnsutils \
    dnsmasq-base \
    netcat-openbsd \
    python3 \
    curl \
    wget \
    iptables \
    procps \
    isc-dhcp-client \
    tmux
ENV LANG ja_JP.UTF-8
ENV TZ Asia/Tokyo
WORKDIR /tcpip-study