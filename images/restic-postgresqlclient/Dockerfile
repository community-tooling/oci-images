# Get the latest restic container to extract the binary from
FROM restic/restic:0.16.0@sha256:5777caeaf211e18537cf8d24cff3de7b12309d6e27c51e39eb757c5da2d52c58 as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:15.4-alpine@sha256:3e9aae393f97c48961b1541f5f39452bf29f033ac014b7736426263c0acb95be
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
