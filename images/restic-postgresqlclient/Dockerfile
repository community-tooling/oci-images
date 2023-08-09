# Get the latest restic container to extract the binary from
FROM restic/restic:0.16.0@sha256:41bd544380380937ed269a89b0b1c6366476a8dcf10ef03c36788eac36cb2450 as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:15.3-alpine@sha256:4ca65a9209f164bdb30f715ac2ed9182cc0737d0f0a549031b3c1b0b7e652f3a
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
