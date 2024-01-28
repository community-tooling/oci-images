# Get the latest restic container to extract the binary from
FROM restic/restic:0.16.3@sha256:a6403c7cff59eb6b84f6e95064623b0a82b2fafd5c95a743eb690c029300bc63 as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:16.1-alpine@sha256:8a52533e6a945aaecf967402d49b91d6a501ffe3d71c00217b5486ac6d2e6353
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
