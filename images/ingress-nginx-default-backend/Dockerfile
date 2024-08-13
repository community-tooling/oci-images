FROM --platform=${TARGETPLATFORM} nginx:1.27.0@sha256:93db6ea665b5485e59f0b35e506456b5055925d43011bdcc459d556332d231a2

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
