# semaphore

[Semaphore](https://github.com/NickColley/semaphore) is an accessible, simple and fast web client for Mastodon.

- The upstream project does not provide a Docker image, so this repo automatically builds and releases an image for each new upstream release.
- The upstream project hardcodes the oauth website to the official Semaphore website. So until https://github.com/NickColley/semaphore/pull/71 is merged and released we apply a mainimal patch in the [Dockerfile](./Dockerfile) to make it dynamic.
- The container runs nginx and listens on port 80.
