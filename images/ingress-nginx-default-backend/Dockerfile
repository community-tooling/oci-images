FROM --platform=${TARGETPLATFORM} nginx:1.26.0@sha256:3f28ecedbd787b3ff0a6d56cd4a1b13901acda532c717e3b7351fcc786973d79

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
