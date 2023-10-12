FROM --platform=${TARGETPLATFORM} nginx:1.25.2@sha256:b4af4f8b6470febf45dc10f564551af682a802eda1743055a7dfc8332dffa595

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
