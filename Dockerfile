FROM node:10.14.1-alpine

RUN apk update && \
    apk upgrade && \
    apk add git openssh

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
