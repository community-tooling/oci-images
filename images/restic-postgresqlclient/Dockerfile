# Get the latest restic container to extract the binary from
FROM restic/restic:0.17.3@sha256:8f5a62b422a2cb1277ea0dd6e826fe1acf649e5b9f02d60e5268d5fd1976255a as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:17.2-alpine@sha256:ae4c58bfaf6f12b3ef8767d0a5a3cc1e5390a5013f37eb79e4cc5b98142d795d
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
