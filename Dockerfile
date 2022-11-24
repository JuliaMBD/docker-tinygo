FROM codercom/code-server:4.8.3-focal

USER root

ENV DEBIAN_FRONTEND nointeractive
RUN apt-get update &&\
    apt-get install -y \
    gcc-avr \
    avr-libc \
    avrdude \
    wget \
    usbutils \
    cmake &&\
    apt-get clean &&\
    rm -fr /var/lib/apt/lists/*

RUN wget https://github.com/tinygo-org/tinygo/releases/download/v0.26.0/tinygo_0.26.0_amd64.deb &&\
    dpkg -i tinygo_0.26.0_amd64.deb &&\
    rm tinygo_*

RUN wget https://go.dev/dl/go1.19.3.linux-amd64.tar.gz &&\
    rm -rf /usr/local/go &&\
    tar -C /usr/local -xzf go1.19.3.linux-amd64.tar.gz &&\
    rm go*

ENV PATH $PATH:/usr/local/go/bin
ENV PATH $PATH:/usr/local/bin

USER 1000
WORKDIR /home/coder
