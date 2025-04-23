FROM --platform=${TARGETPLATFORM} nginx:1.28.0@sha256:9334faa48d730571746a7baab46d62896cb685502bc29d270c4495e26fc78afd

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
