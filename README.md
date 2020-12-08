<p align="center">
    <img width="25%" src="./logo.svg">
</p>

# Glyphhanger Docker Image

A docker image that has [Glyphhanger](https://github.com/filamentgroup/glyphhanger) preinstalled. It can be used to easily subset webfonts, so that they only contain the glyphs required. Only supports JSDOM mode!

## Usage

You can run the container directly with docker. The files to process should be mounted to the `/app` folder within the container:

```
docker run --rm -v "/dist:/app" raeffs/glyphhanger index.html --jsdom --subset=*.woff
```

For all available options please refer to the [Glyphhanger Documentation](https://github.com/filamentgroup/glyphhanger).

### Windows

On docker for windows you need to provide an absolute url for the path to mount:

```
docker run --rm -v "D:\dist:/app" raeffs/glyphhanger index.html --jsdom --subset=*.woff
```

## Attributions

Icon made by <a href="http://www.freepik.com/" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a>
