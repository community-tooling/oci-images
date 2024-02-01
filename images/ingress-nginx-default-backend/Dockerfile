FROM --platform=${TARGETPLATFORM} nginx:1.25.3@sha256:31754bca89a3afb25c04d6ecfa2d9671bc3972d8f4809ff855f7e35caa580de9

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
