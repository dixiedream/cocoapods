FROM alpine:3.8

ARG COCOAPOD_VERSION="1.5.3"

RUN apk upgrade --update \
    && apk --no-cache add git ruby-full curl

# Packaged `activesupport` incompatible with packaged `ruby` version
# RUN gem install activesupport -v 4.2.6

RUN gem install cocoapods -v ${COCOAPOD_VERSION}

# Cleaning
RUN rm -rf /var/cache/apk/*

# Change user
RUN adduser -D cocoapods
USER cocoapods

# Entrypoint
#RUN pod setup
WORKDIR /project