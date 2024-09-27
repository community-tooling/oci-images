FROM --platform=${TARGETPLATFORM} nginx:1.27.1@sha256:d49075921353f9cc6c377ba60fd0c915fe8fe7a96813f64b82bca5f1e9ab76e9

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
