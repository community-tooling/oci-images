# Get the latest restic container to extract the binary from
FROM restic/restic:0.19.1@sha256:136600b6ff6843d61d355f7f71f460a166429f35de6fd11b568fece3c9a4d510 as restic

# Get the latest postgres alpine image to support the latest postgres server version
FROM postgres:18.6-alpine@sha256:6c538e7206ea40ff740ef27883529390a690b6ead6ba96b44c67a9f7c638e8fd
COPY --from=restic /usr/bin/restic /usr/bin

ENTRYPOINT ["/usr/bin/restic"]
