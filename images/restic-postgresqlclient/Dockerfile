# Get the latest restic container to extract the binary from
FROM restic/restic:0.15.0 as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:15.0-alpine
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
