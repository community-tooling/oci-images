# Get the latest restic container to extract the binary from
FROM restic/restic:0.16.4@sha256:dad38b8042cfb1a759a958ed0061b888ebd05b1e780125a1fb4e2d687c6c0556 as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:16.3-alpine@sha256:7f7832dfb7770c7256fe3f8c4cb57617caee45e2494cc0a736594135237ed9bf
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
