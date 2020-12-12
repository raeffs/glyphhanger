FROM node:12

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true

RUN apt-get update \
  # install python & pip
  && apt-get install -y \
  python3 \
  python3-pip \
  # install fonttools & brotli & zopfli
  && pip3 install fonttools \
  && pip3 install brotli \
  && pip3 install zopfli \
  # install glyphhanger
  && npm i -g glyphhanger

ENTRYPOINT [ "glyphhanger" ]
