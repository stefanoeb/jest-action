FROM node:10.14.1-alpine

RUN apk add git

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
