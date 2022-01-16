FROM debian:10.11

RUN apt update
RUN apt install -y wget
RUN apt-get install -y jq

ENV INSTALL=/install
RUN mkdir $INSTALL
WORKDIR $INSTALL

COPY kubectl kubectl
RUN install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
RUN kubectl version --client

RUN apt-get -y install gettext-base
RUN apt install -y make

RUN wget https://get.helm.sh/helm-v3.7.2-linux-amd64.tar.gz
RUN tar -xf helm-v3.7.2-linux-amd64.tar.gz
RUN mv linux-amd64/helm /usr/local/bin/helm
RUN rm -R linux-amd64

RUN apt install -y python3
RUN apt install -y dnsutils

ENV HOME=/app
RUN mkdir $HOME
WORKDIR $HOME
