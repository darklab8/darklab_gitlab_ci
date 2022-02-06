FROM docker:20.10.12-dind-alpine3.15

WORKDIR /install

RUN apk update
RUN apk add --no-cache wget
RUN apk add --no-cache curl

RUN curl -LO https://dl.k8s.io/release/v1.22.4/bin/linux/amd64/kubectl
RUN install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
RUN kubectl version --client

RUN wget https://get.helm.sh/helm-v3.7.2-linux-amd64.tar.gz
RUN tar -xf helm-v3.7.2-linux-amd64.tar.gz
RUN mv linux-amd64/helm /usr/local/bin/helm
RUN rm -R linux-amd64

# ENTRYPOINT nohup /usr/local/bin/dockerd-entrypoint.sh & sh

# RUN apt-get install -y jq
# RUN apt install -y python3
# RUN apt install -y dnsutils
# RUN apt-get -y install gettext-base
# RUN apt install -y make

WORKDIR /app

