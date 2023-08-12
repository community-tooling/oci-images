# Get the latest restic container to extract the binary from
FROM restic/restic:0.16.0@sha256:41bd544380380937ed269a89b0b1c6366476a8dcf10ef03c36788eac36cb2450 as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:15.4-alpine@sha256:8bc3c893342c766481df5fde58fab6f1a1115b94eb56778126163305243e9709
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
