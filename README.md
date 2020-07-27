# Glyphhanger Docker Image

![Publish Docker Image](https://github.com/raeffs/glyphhanger/workflows/Publish%20Docker%20Image/badge.svg)

A docker image that has [Glyphhanger](https://github.com/filamentgroup/glyphhanger) preinstalled. It can be used to easily subset webfonts, so that they only contain the glyphs required. It only supports JSDOM mode:

```
docker run --rm -v "/dist:/app" raeffs/glyphhanger index.html --jsdom --subset=*.woff
```

For all available options please refer to the [Glyphhanger Documentation](https://github.com/filamentgroup/glyphhanger).
