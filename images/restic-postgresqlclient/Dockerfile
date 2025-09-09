# Get the latest restic container to extract the binary from
FROM restic/restic:0.18.0@sha256:4cf4a61ef9786f4de53e9de8c8f5c040f33830eb0a10bf3d614410ee2fcb6120 as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:17.6-alpine@sha256:de3b2a5a4673054c5fb8688b8da5b32e93ad7ee09d810ca19f55a4095accfdcb
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
