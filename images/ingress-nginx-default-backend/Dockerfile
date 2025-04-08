FROM --platform=${TARGETPLATFORM} nginx:1.27.4@sha256:09369da6b10306312cd908661320086bf87fbae1b6b0c49a1f50ba531fef2eab

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
