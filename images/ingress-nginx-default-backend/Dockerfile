FROM --platform=${TARGETPLATFORM} nginx:1.27.4@sha256:ffa524536736e9341b829e0638f56afab8bda691b8cfa46c1f02ffe4c6046f97

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
