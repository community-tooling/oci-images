# Get the latest restic container to extract the binary from
FROM restic/restic:0.16.0@sha256:5777caeaf211e18537cf8d24cff3de7b12309d6e27c51e39eb757c5da2d52c58 as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:16.0-alpine@sha256:acf5271bbecd4b8733f4e93959a8d2b536a57aeee6cc4b6a71890aaf646425b8
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
