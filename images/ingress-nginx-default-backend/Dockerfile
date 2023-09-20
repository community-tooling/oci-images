FROM --platform=${BUILDPLATFORM} nginx:1.25.2@sha256:daf2404ac5e6759c5671b81579b598900b39260bdd6cdb5890f6f1386b193175

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
