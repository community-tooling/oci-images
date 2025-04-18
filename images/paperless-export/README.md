# paperless-export

With [PR #8886](https://github.com/paperless-ngx/paperless-ngx/pull/8886), released with [v2.15.0](https://github.com/paperless-ngx/paperless-ngx/releases/tag/v2.15.0) of paperless-ngx, the official docker image uses s6 as an overlay.

While [s6 supports explicitly executing one command with the CMD instruction](https://github.com/just-containers/s6-overlay#using-cmd), the supporting services (e.g. redis) are always started when the container is started.

This effectively renders the image unable to just perform the `document_exporter` command without doing anything else.

Since using `docker exec` is the [only officially supported](https://github.com/paperless-ngx/paperless-ngx/issues/9631#issuecomment-2798823502) way to run the document_exporter, I (@morremeyer) decided to build this image.

## What does it do?

This image runs the paperless [`document_exporter`](https://docs.paperless-ngx.com/administration/#exporter) command with the `/export` target directory.

To use it, start the container with your target directory mounted to `/export`.

## How is it built?

The image is built on top of the official paperless-ngx image, ensuring that dependencies etc. are always correct.

There are two changes made:

- The s6-overlay configuration is deleted and replaced with the default s6-overlay configuration, so that no services start when the container starts
- The CMD is set to execute the [export](./export) script
