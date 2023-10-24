# Get the latest restic container to extract the binary from
FROM restic/restic:0.16.1@sha256:91ddef1ac2db8622f541451870b51b65770385e04de062a102c6db3db5e1042f as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:16.0-alpine@sha256:acf5271bbecd4b8733f4e93959a8d2b536a57aeee6cc4b6a71890aaf646425b8
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
