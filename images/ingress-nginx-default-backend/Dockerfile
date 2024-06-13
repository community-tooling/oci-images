FROM --platform=${TARGETPLATFORM} nginx:1.27.0@sha256:b6cb2a904338c415a9e4b11cd75a8367d32a3425725afa72bf8f98cfa64d9d85

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
