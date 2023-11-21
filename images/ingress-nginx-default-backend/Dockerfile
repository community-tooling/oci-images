FROM --platform=${TARGETPLATFORM} nginx:1.25.3@sha256:e5c240a6604281581e9828af96485f7bcb9fce9e7b0e43b8189ea9f38495a4c9

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
