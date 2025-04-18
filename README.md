# OCI images

This repository contains the definitions and workflows to build various OCI images.

Check out the different directories in [`images`](images/)

## Versioning

Images are versioned automatically based on the semantic commit scope of the commit changing them.
This means that your Pull request needs to specify the kind of version bump that should be done in the tile

Valid scopes are: `major`, `minor`, `patch`

**Examples for PR titles**

```
feat(minor): Add new functionality
fix(major): Fix a bug, but the fix is a breaking change
fix(patch): Fix a bug without breaking things
chore(patch): Update dependencies
```

renovate is configured to automatically apply the `major` and `minor` scope to the respective updates and the `patch` scope to all other commits it creates.

## Requirements for images

- All images have to be built multi-arch with buildx for: amd64, arm64. If you want to see another architecture in this list, please open an issue
- Pin dependencies as exactly as possible

## Contributing

You need to have installed:

- [pre-commit](pre-commit.com)
- [hadolint](https://github.com/hadolint/hadolint)

Run `make init` after you have cloned the repository to set up pre-commit.

### Adding a new image

If you add a new image that is built on top of a base image, using docker, you can find that image's SHA digest with:

```sh
docker buildx imagetools inspect IMAGE:TAG
```
