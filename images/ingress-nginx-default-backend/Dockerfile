FROM --platform=${BUILDPLATFORM} nginx:1.25.1@sha256:161bd1ce08016b915162913f54b28360029e67e8a2913d92368956b7607fb1bb

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
