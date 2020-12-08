FROM node:12

WORKDIR /temp

# install python & pip
RUN apt-get update \
    && apt-get install -y \
    python3 \
    python3-pip

# install fonttools & brotli & zopfli
RUN pip3 install fonttools \
    && pip3 install brotli \
    && pip3 install zopfli

# install glyphhanger
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
RUN npm i -g glyphhanger

WORKDIR /app

ENTRYPOINT [ "glyphhanger" ]
