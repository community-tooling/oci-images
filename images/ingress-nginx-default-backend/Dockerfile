FROM --platform=${TARGETPLATFORM} nginx:1.26.0@sha256:2beeba28209da942299fa7ae30286575f44573d08ef6a58b551c3a04cc4433a2

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
