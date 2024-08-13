FROM --platform=${TARGETPLATFORM} nginx:1.27.0@sha256:cfe5f9a63c7c5098a2122fe87a07dffe5e9bd7178d8e804a019dc831ad8f4d0d

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
