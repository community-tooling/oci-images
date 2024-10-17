FROM --platform=${TARGETPLATFORM} nginx:1.27.2@sha256:ff466795a4535e1d47cf2b901ce15b0ad2ba7f6e0140f12f7d62cb1c9160067a

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
