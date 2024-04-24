FROM --platform=${TARGETPLATFORM} nginx:1.25.5@sha256:61f40f031b933dff30d60750ee0331a95ffd4107c74aed204c45f3c6e3ead27a

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
