FROM openjdk:8-jre-alpine

ARG RELEASE='1.13.0'
ARG ALLURE_REPO=https://dl.bintray.com/qameta/generic/allurectl

RUN apk update
RUN apk add bash
RUN apk add wget
RUN apk add unzip

RUN mkdir -p /allure-$RELEASE/bin/
RUN wget $ALLURE_REPO/$RELEASE/allurectl_linux_386 -O /allure-$RELEASE/bin/allurectl --no-verbose

RUN rm -rf /var/cache/apk/*

RUN chmod -R +x /allure-$RELEASE/bin

ENV ROOT=/app
ENV PATH=$PATH:/allure-$RELEASE/bin

RUN mkdir -p $ROOT

WORKDIR $ROOT
COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]