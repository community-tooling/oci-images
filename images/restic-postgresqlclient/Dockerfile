# Get the latest restic container to extract the binary from
FROM restic/restic:0.16.5@sha256:157243d77bc38be75a7b62b0c00453683251310eca414b9389ae3d49ea426c16 as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:16.3-alpine@sha256:f0ab436f8f2d0c68b17a3207e0ecce23398ead997ba730d84e5e474a41dd2196
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
