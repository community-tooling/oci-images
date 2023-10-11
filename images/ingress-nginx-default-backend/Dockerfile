FROM --platform=${TARGETPLATFORM} nginx:1.25.2@sha256:72477e4c0d0fd3beaf0237e7d3e8f6a06a096612f92dfbc51522d58b1df15edd

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
