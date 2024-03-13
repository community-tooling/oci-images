FROM --platform=${TARGETPLATFORM} nginx:1.25.4@sha256:d9eb5c19cc4faafa2f12a37f06c0c281331329f4e36b19140d4fea3aecc49abe

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
