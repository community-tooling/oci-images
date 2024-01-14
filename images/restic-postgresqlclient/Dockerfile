# Get the latest restic container to extract the binary from
FROM restic/restic:0.16.3@sha256:a6403c7cff59eb6b84f6e95064623b0a82b2fafd5c95a743eb690c029300bc63 as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:16.1-alpine@sha256:884718395ee967fc70374563f3b4d72f0c61f48f81868decb9fa452915fe070e
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
