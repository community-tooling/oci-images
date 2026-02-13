# Get the latest restic container to extract the binary from
FROM restic/restic:0.18.1@sha256:39d9072fb5651c80d75c7a811612eb60b4c06b32ffe87c2e9f3c7222e1797e76 as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:18.2-alpine@sha256:88f300be8635fe8a9ed4c18a68ba497fb6df1215fd2b074895afd027bd3e1006
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
