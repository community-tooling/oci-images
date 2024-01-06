# Get the latest restic container to extract the binary from
FROM restic/restic:0.16.2@sha256:97da927874987a197b457738fdaf0069bdbf3d2cf4feaa4fb8f91baa1df237c8 as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:16.1-alpine@sha256:884718395ee967fc70374563f3b4d72f0c61f48f81868decb9fa452915fe070e
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
