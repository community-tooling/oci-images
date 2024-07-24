FROM --platform=${TARGETPLATFORM} nginx:1.27.0@sha256:05ab1728068284cbd42d54554fa2b69a3d6334adafccf2e70cf20925d7d55e90

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
