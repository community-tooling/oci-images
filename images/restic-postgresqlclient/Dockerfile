# Get the latest restic container to extract the binary from
FROM restic/restic:0.16.0@sha256:41bd544380380937ed269a89b0b1c6366476a8dcf10ef03c36788eac36cb2450 as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:15.3-alpine@sha256:48d8422c6ae570a5bda52f07548b8e65dd055ac0b661f25b44b20e8cff2f75f0
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
