FROM --platform=${TARGETPLATFORM} nginx:1.25.3@sha256:ea97e6aace270d82c73da382ea1a8c42d44b9dc11b55159104e21c49c687e7fb

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
