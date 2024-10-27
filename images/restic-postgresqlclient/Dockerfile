# Get the latest restic container to extract the binary from
FROM restic/restic:0.17.2@sha256:a62b28aa521d8613281c831b0fb3a3911b90d36ad8bf279ecd3e94dd6c467616 as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:17.0-alpine@sha256:14195b0729fce792f47ae3c3704d6fd04305826d57af3b01d5b4d004667df174
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
