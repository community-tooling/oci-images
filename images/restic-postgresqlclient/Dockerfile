# Get the latest restic container to extract the binary from
FROM restic/restic:0.18.1@sha256:39d9072fb5651c80d75c7a811612eb60b4c06b32ffe87c2e9f3c7222e1797e76 as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:18.1-alpine@sha256:655a411a84c1d7af7a21473c2eda3d8d24d7a9ff38ca279c897871b34acc0ce1
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
