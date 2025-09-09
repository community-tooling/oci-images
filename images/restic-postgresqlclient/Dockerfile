# Get the latest restic container to extract the binary from
FROM restic/restic:0.18.0@sha256:4cf4a61ef9786f4de53e9de8c8f5c040f33830eb0a10bf3d614410ee2fcb6120 as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:17.6-alpine@sha256:d93aaac29e4e7525c29b6f6b9ec982a0950c1ab408f6fa9af67705c651f0a8c4
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
