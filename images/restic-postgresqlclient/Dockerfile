# Get the latest restic container to extract the binary from
FROM restic/restic:0.17.0@sha256:da2bd7f56bc940bd14166d4802370d49b2232ee1d28898a3295fbf3d73606d80 as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:16.3-alpine@sha256:36ed71227ae36305d26382657c0b96cbaf298427b3f1eaeb10d77a6dea3eec41
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
