FROM debian:9

RUN apt-get update \
    && apt-get install -y make texlive-full \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
