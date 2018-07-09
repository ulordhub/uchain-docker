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
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/UlordChain/UlordChain.git

RUN cd UlordChain \
    && ./autogen.sh \
    && ./configure \
    && make -j 4

EXPOSE 19887
EXPOSE 19889

ADD entrypoint /
CMD ["/entrypoint"]
