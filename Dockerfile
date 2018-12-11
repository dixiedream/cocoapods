FROM alpine:3.8

ARG COCOAPOD_VERSION="1.5.3"

RUN apk upgrade --update \
    && apk --no-cache add git ruby-full curl \
    && gem install cocoapods -v ${COCOAPOD_VERSION} \
    && rm -rf /var/cache/apk/*

# Packaged `activesupport` incompatible with packaged `ruby` version
# RUN gem install activesupport -v 4.2.6

# Change user
RUN adduser -D cocoapods
USER cocoapods

# .cocoapods path: /home/cocoapods/.cocoapods
RUN pod setup 

WORKDIR /project