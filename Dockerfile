FROM node:alpine

ENV LT_PORT 80
ENV LT_SUBDOMAIN yudi7ll

COPY healthcheck.js /
RUN npm i -g localtunnel

HEALTHCHECK --interval=3s --timeout=3s --start-period=3s CMD node /healthcheck.js ${LT_SUBDOMAIN}
CMD lt -p ${LT_PORT} -s ${LT_SUBDOMAIN}
