FROM --platform=${TARGETPLATFORM} nginx:1.29.3@sha256:f547e3d0d5d02f7009737b284abc87d808e4252b42dceea361811e9fc606287f

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
