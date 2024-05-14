FROM --platform=${TARGETPLATFORM} nginx:1.26.0@sha256:80e6ac4ff1d9e5fe352295de27c5a813b8f8eeaef631cb27b1b479c2f24b433e

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
