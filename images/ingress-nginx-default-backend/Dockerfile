FROM --platform=${TARGETPLATFORM} nginx:1.29.4@sha256:e3a22a791adaf8f59de605d824f8d9cf0ac7c7c779d405bb0158144e57433246

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
