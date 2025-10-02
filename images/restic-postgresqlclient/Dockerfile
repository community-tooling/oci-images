# Get the latest restic container to extract the binary from
FROM restic/restic:0.18.1@sha256:39d9072fb5651c80d75c7a811612eb60b4c06b32ffe87c2e9f3c7222e1797e76 as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:17.6-alpine@sha256:d8bb4852e30c168a99654c9fa0673f51e4419cf96e931dbfe163fd8680bf1dba
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
