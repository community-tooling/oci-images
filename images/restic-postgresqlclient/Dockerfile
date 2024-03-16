# Get the latest restic container to extract the binary from
FROM restic/restic:0.16.4@sha256:dad38b8042cfb1a759a958ed0061b888ebd05b1e780125a1fb4e2d687c6c0556 as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:16.2-alpine@sha256:8671bb4dcbc552e81fc58af8eabd3a071aa5c2e48e8f1cc02c7c6151cab50cd2
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
