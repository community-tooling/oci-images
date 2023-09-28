FROM --platform=${TARGETPLATFORM} nginx:1.25.2@sha256:32da30332506740a2f7c34d5dc70467b7f14ec67d912703568daff790ab3f755

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
