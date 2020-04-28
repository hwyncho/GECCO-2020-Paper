FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update;
RUN apt-get dist-upgrade --yes;
RUN apt-get install --yes git make texlive-full;
RUN apt-get clean;
RUN rm -rf /var/lib/apt/lists/*;

WORKDIR /workspace
