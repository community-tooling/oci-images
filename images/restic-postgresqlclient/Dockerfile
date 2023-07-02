# Get the latest restic container to extract the binary from
FROM restic/restic:0.15.0@sha256:d1be7c85fcba95c53df4a818093ecd9d78b0c08f8878b435f255ac9858a55e59 as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:15.0-alpine@sha256:09d57b502063c77d8896683ff5126187025d7b2e2b4378a896b90dced36bc083
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
