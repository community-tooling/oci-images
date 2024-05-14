FROM --platform=${TARGETPLATFORM} nginx:1.26.0@sha256:f00e9a27310a9ea8205798d5dceca575a0c7da11a24a82e6ce69bc3f36317082

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
