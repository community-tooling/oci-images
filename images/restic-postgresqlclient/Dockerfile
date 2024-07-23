# Get the latest restic container to extract the binary from
FROM restic/restic:0.16.5@sha256:157243d77bc38be75a7b62b0c00453683251310eca414b9389ae3d49ea426c16 as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:16.3-alpine@sha256:808a26f109281cf7e5d43049d2655b6381fca13bd53dc4169a238e08760ccfc6
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
