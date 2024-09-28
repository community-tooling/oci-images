# Get the latest restic container to extract the binary from
FROM restic/restic:0.17.1@sha256:424a4e1fcc6fe2557b5614239dc71a2c793acb33a83ea217171bd7edc1862dcb as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:17.0-alpine@sha256:14195b0729fce792f47ae3c3704d6fd04305826d57af3b01d5b4d004667df174
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
