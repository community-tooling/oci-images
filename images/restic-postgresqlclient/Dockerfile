# Get the latest restic container to extract the binary from
FROM restic/restic:0.16.4@sha256:dad38b8042cfb1a759a958ed0061b888ebd05b1e780125a1fb4e2d687c6c0556 as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:16.1-alpine@sha256:17eb369d9330fe7fbdb2f705418c18823d66322584c77c2b43cc0e1851d01de7
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
