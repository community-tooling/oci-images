# Get the latest restic container to extract the binary from
FROM restic/restic:0.18.0@sha256:4cf4a61ef9786f4de53e9de8c8f5c040f33830eb0a10bf3d614410ee2fcb6120 as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:17.5-alpine@sha256:bcb90dc18910057ff49ce2ea157d8a0d534964090d39af959df41083f18c3318
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
