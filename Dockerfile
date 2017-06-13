FROM ruby:2.1.10-alpine

ENV HTMLPROOFER_VERSION 3.0.6

RUN apk add --no-cache --virtual build-deps build-base && \
    apk add --no-cache libcurl && \
    gem install html-proofer -v $HTMLPROOFER_VERSION && \
    apk del build-deps

CMD ["htmlproofer"]
