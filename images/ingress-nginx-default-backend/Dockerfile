FROM --platform=${TARGETPLATFORM} nginx:1.25.3@sha256:4d2f2056993a84b7b9832c7612c5900c26ecd908bd2baacc8c18f6abbc8e0770

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
