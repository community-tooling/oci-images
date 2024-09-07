# Get the latest restic container to extract the binary from
FROM restic/restic:0.17.1@sha256:424a4e1fcc6fe2557b5614239dc71a2c793acb33a83ea217171bd7edc1862dcb as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:16.4-alpine@sha256:9453abcf4221ab607ceb683d7bbe5d9fb93bba7180e48a981dd4b335627902ce
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
