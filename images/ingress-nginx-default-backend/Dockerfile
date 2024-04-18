FROM --platform=${TARGETPLATFORM} nginx:1.25.5@sha256:55649aee166d76325aa4bbe33d68fecebf1b246cfb5a82ac1fa3bf698456cfdb

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
