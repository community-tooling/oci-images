FROM --platform=${TARGETPLATFORM} nginx:1.29.4@sha256:8056efe71da8ed19531f121e6ad42ab4164aa78bc28048bb98dd2d8012e6cb00

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
