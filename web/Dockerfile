FROM node:alpine

WORKDIR "/app"

COPY . .

RUN npm install

RUN apk add --no-cache bash

EXPOSE 5000 4443

ENTRYPOINT ["/bin/bash", "run-server.sh"]

