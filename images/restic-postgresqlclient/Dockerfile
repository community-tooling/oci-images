# Get the latest restic container to extract the binary from
FROM restic/restic:0.17.3@sha256:8f5a62b422a2cb1277ea0dd6e826fe1acf649e5b9f02d60e5268d5fd1976255a as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:17.1-alpine@sha256:0d9624535618a135c5453258fd629f4963390338b11aaffb92292c12df3a6c17
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
