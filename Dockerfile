ARG NODE_VERSION=20.16.0
ARG WORKDIR=/app

FROM node:${NODE_VERSION}-alpine

ARG WORKDIR

WORKDIR ${WORKDIR}

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true

RUN apk update && \
  apk add --no-cache python3 py3-pip && \
  pip install fonttools brotli zopfli --break-system-packages && \
  npm i -g glyphhanger

ENTRYPOINT ["glyphhanger"]
