FROM ubuntu:22.04 AS base

RUN apt-get update -y && \
    apt-get install -yqq \
        ca-certificates \
        wget \
        curl \
        telnet \
        gpg \
        apt-transport-https && \
        apt clean

RUN wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.98a/lolMiner_v1.98a_Lin64.tar.gz && \
        tar -xzf lolMiner_v1.98a_Lin64.tar.gz && \
        rm lolMiner_v1.98a_Lin64.tar.gz && \
        mv 1.98a lol-miner

RUN ln -s libnvidia-ml.so.1 /lib/x86_64-linux-gnu/libnvidia-ml.so

WORKDIR /

COPY startup.sh /
COPY miner_cmd /

RUN chmod +x startup.sh

CMD ["./startup.sh"]