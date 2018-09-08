FROM ubuntu:16.04
MAINTAINER fabius8 <fabius8@163.com>

RUN apt-get update \
    && apt-get install --no-install-recommends -y \
    software-properties-common \
    build-essential \
    libtool \
    autotools-dev \
    automake pkg-config \
    libssl-dev \
    libevent-dev \
    bsdmainutils \
    libboost-system-dev \
    libboost-filesystem-dev \
    libboost-chrono-dev \
    libboost-program-options-dev \
    libboost-test-dev \
    libboost-thread-dev \
    git-core \
    && rm -rf /var/lib/apt/lists/*

RUN add-apt-repository ppa:bitcoin/bitcoin \
    && apt-get update \
    && apt-get install --no-install-recommends -y \
    libminiupnpc-dev \
    libdb4.8-dev \
    libzmq3-dev \
    libdb4.8++-dev \
    wget \
    && rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/UlordChain/UlordChain/releases/download/V.1.1.2/ulordchain-ubuntu-v-1-1-2.tar.gz \
    tar xvf ulordchain-ubuntu-v-1-1-2.tar.gz 

EXPOSE 19887
EXPOSE 19889

ADD entrypoint /
CMD ["/entrypoint"]
