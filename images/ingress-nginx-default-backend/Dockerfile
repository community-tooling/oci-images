FROM --platform=${TARGETPLATFORM} nginx:1.27.1@sha256:287ff321f9e3cde74b600cc26197424404157a72043226cbbf07ee8304a2c720

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
