FROM golang:alpine3.15

LABEL maintainer="Fabiano Santos Florentino"
LABEL description="A go image for the development of a application"
LABEL go version="1.18"
LABEL image version="v0.1"


RUN apk --no-cache update \
    && apk --no-cache upgrade \
    && pip install --upgrade pip \
    && pip install -r requirements.txt --no-cache-dir \
    && rm -vrf /var/cache/apk/* \
    && adduser --disabled-password --gecos "" golang

USER golang

ENTRYPOINT [ "sh" ]