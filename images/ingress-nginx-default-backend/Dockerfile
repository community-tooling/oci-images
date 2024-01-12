FROM --platform=${TARGETPLATFORM} nginx:1.25.3@sha256:6959ee03b2d6a01addb4fb5e26c5ef95c60bd3108d810636409ce63f02924ad3

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
