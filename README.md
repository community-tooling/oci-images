# OCI images

This repository contains the definitions and workflows to build various OCI images.

Check out the different directories in [`images`](images/)

## Versioning

Currently, all images are automatically versioned in a prefixed calver style. This does not tell us anything about the versions of the software in the image, but it fulfills the Semantic Versioning 2.0.0 specification and allows us to change to e.g. actual semantic versioning or another format later by bumping the major version.

The format looks as follows:

```
1.YYYYMMDD.t
```

with `YYYYMMDD` being the date of publishing and `t` the unix timestamp.

## Requirements for images

- All images have to be built multi-arch with buildx for: amd64, arm64. If you want to see another architecture in this list, please open an issue
- Pin dependencies as exactly as possible

## Contributing

You need to have [pre-commit](pre-commit.com) installed and a container daemon running (for hadolint)

Run `make init` after you have cloned the repository to set up pre-commit.

### Adding a new image

If you add a new image that is built on top of a base image, using docker, you can find that image's SHA digest with:

```sh
docker buildx imagetools inspect IMAGE:TAG
```
