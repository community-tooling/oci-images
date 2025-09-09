# Get the latest restic container to extract the binary from
FROM restic/restic:0.18.0@sha256:4cf4a61ef9786f4de53e9de8c8f5c040f33830eb0a10bf3d614410ee2fcb6120 as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:17.6-alpine@sha256:d5f196a551b5cef1c70853c6dd588f456d16ca4ea733e3f31c75bc1ae2f65f3f
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
