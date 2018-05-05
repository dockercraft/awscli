FROM dockercraft/alpine:3.7
MAINTAINER Daniel <daniel@topdevbox.com>

# How-To
 # Local Build: docker build -t awscli .
 # Local Run: docker run -i -t awscli aws help


ENV PACKAGES "curl openssl ca-certificates groff less python py-pip jq=1.5-r5"
ENV AWSCLI_VERSION "1.15.11"

RUN apk add --update $PACKAGES \
    && pip install awscli==$AWSCLI_VERSION \
    && rm -rf /var/cache/apk/*
    
