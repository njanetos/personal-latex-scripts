# GPLv3
FROM ubuntu:latest
MAINTAINER njanetos <nejanetos@gmail.com>
LABEL Description="Personal latex build environment"

RUN apt-get update && \
  apt-get install -y \
  texlive-full \
  && apt-get clean && rm -rf /var/lib/apt/lists/*
