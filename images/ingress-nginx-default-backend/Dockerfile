FROM --platform=${TARGETPLATFORM} nginx:1.25.4@sha256:b72dad1d013c5e4c4fb817f884aa163287bf147482562f12c56368ca1c2a3705

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
