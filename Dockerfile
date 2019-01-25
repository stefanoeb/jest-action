FROM node:10.14.1-alpine

LABEL "com.github.actions.name"="Run Jest"
LABEL "com.github.actions.description"="Use the Jest test runner CLI"
LABEL "com.github.actions.icon"="grid"
LABEL "com.github.actions.color"="blue"

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
