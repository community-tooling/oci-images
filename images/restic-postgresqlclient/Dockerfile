# Get the latest restic container to extract the binary from
FROM restic/restic:0.16.5@sha256:157243d77bc38be75a7b62b0c00453683251310eca414b9389ae3d49ea426c16 as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:16.3-alpine@sha256:de3d7b6e4b5b3fe899e997579d6dfe95a99539d154abe03f0b6839133ed05065
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
