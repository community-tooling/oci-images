# Get the latest restic container to extract the binary from
FROM restic/restic:0.16.5@sha256:157243d77bc38be75a7b62b0c00453683251310eca414b9389ae3d49ea426c16 as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:16.3-alpine@sha256:36ed71227ae36305d26382657c0b96cbaf298427b3f1eaeb10d77a6dea3eec41
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
