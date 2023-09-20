FROM --platform=${BUILDPLATFORM} nginx:1.25.2@sha256:25668ef2e4be5c3753148ffe583e2c58c27019582fbd061f2d082839746a5cfa

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
