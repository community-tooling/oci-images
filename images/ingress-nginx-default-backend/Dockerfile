FROM --platform=${TARGETPLATFORM} nginx:1.25.3@sha256:1c274506e6ef5d92b7df28fd61e35cea64ed0530994bc16b768a69313e6ff74a

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
