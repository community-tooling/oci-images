# kubectl

Alpine-based image with up-to-date kubectl versions.

This image also includes:

- bash, to execute bash scripts
- curl, for HTTP requests
- jq, to parse JSON

## Additional binaries

If you want an additional binary in this image, please consider installing it only when needed.
We specifically do not want this image to be a swiss army knife that can do everything, but covers only the most common use cases.

Overly specific dependencies will make maintenance unfeasible for us.
