# Glyphhanger Docker Image

Docker image with [glyphhanger](https://github.com/zachleat/glyphhanger) entrypoint.

## Example

Convert all ttf fonts from folder `./fonts` to `woff2` format:

```
docker run -it --rm -v "./fonts:/app" wokalek/glyphhanger --subset=*.ttf --formats=woff2
```

Keep in mind that you should look for your fonts in the `/app` folder inside the container.

To see all of glyphhanger's flags, visit the [repository](https://github.com/zachleat/glyphhanger).
