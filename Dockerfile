FROM ubuntu:22.04

RUN mkdir -p /app/build \
    && cd /app/build \
    && echo "deb http://mirrors.aliyun.com/ubuntu/ focal main restricted universe multiverse\n" \
            "deb http://mirrors.aliyun.com/ubuntu/ focal-updates main restricted universe multiverse\n" \
        > /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y build-essential git wget cmake
