FROM --platform=${TARGETPLATFORM} nginx:1.29.4@sha256:c8dc101ba61a499398c245fed8123abc20a3867ebd3664087890a054a781770b

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
