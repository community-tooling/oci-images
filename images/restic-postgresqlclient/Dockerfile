# Get the latest restic container to extract the binary from
FROM restic/restic:0.16.2@sha256:97da927874987a197b457738fdaf0069bdbf3d2cf4feaa4fb8f91baa1df237c8 as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:16.1-alpine@sha256:6884cbe8b9b5227fd09788f2cb257ec006b4a21239284fef409d808e9a985229
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
