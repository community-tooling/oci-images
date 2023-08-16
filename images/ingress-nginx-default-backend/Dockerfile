FROM --platform=${BUILDPLATFORM} nginx:1.25.2@sha256:97874547333e20ac39699be3af3dbc052759a8b89417d84586a7cbc2ee72ae9f

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
