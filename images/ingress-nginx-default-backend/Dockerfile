FROM --platform=${TARGETPLATFORM} nginx:1.25.4@sha256:215c18d7ee05b5a3b440f2b8030e767550994d84d09d103a05d3a91c3b9b5283

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
