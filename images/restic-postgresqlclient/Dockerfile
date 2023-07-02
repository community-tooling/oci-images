# Get the latest restic container to extract the binary from
FROM restic/restic:0.15.2@sha256:579e4e6a4931e7cf0ac212cf65a605ab534846b1ea217b1c01f89edc9ff4c1f5 as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:15.0-alpine@sha256:09d57b502063c77d8896683ff5126187025d7b2e2b4378a896b90dced36bc083
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
