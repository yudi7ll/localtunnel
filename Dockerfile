FROM node:alpine

ENV LT_PORT 80
ENV LT_SUBDOMAIN yudi7ll

RUN apk update && apk add curl --no-cache
RUN npm i -g localtunnel

CMD lt -p ${LT_PORT} -s ${LT_SUBDOMAIN}
