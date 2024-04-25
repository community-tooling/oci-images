FROM --platform=${TARGETPLATFORM} nginx:1.26.0@sha256:ba9587717b056e1993b051f71cea30ddd5caf09ae2087b1eeb11329f52468e49

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
