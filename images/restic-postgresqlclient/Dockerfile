# Get the latest restic container to extract the binary from
FROM restic/restic:0.16.0@sha256:41bd544380380937ed269a89b0b1c6366476a8dcf10ef03c36788eac36cb2450 as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:15.4-alpine@sha256:611f94f9130ddd6e57935193d4a35f30a7bbc51a96fc0438f7a59f680253415d
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
