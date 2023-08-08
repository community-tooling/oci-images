# Get the latest restic container to extract the binary from
FROM restic/restic:0.16.0@sha256:41bd544380380937ed269a89b0b1c6366476a8dcf10ef03c36788eac36cb2450 as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:15.3-alpine@sha256:131a80d95dcf93b2b35c60efe6f0348f50507667c0419e78203951e9e450b89d
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
