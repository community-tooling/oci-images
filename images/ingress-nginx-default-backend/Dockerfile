FROM --platform=${TARGETPLATFORM} nginx:1.25.3@sha256:add4792d930c25dd2abf2ef9ea79de578097a1c175a16ab25814332fe33622de

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
