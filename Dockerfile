FROM jenkinsci/blueocean

MAINTAINER Joost Aafjes <joostaafjes@gmail.com>

USER root
RUN apk add --update coreutils python py-pip python-dev jq && \
    pip install awscli && \
    rm -rf /var/cache/apk/*

USER jenkins
