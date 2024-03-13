FROM --platform=${TARGETPLATFORM} nginx:1.25.4@sha256:25dfd5639707178771a975038014083a92e27c9b15523a9ff00daa3a7e445ce1

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
