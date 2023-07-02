# Get the latest restic container to extract the binary from
FROM restic/restic:0.15.2@sha256:579e4e6a4931e7cf0ac212cf65a605ab534846b1ea217b1c01f89edc9ff4c1f5 as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:15.3-alpine@sha256:48d8422c6ae570a5bda52f07548b8e65dd055ac0b661f25b44b20e8cff2f75f0
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
