FROM --platform=${TARGETPLATFORM} nginx:1.27.1@sha256:048a7956e28dab88182e23e04aeb872bebb43bdecc4860485456bd154c3e8a55

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
