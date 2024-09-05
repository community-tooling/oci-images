FROM --platform=${TARGETPLATFORM} nginx:1.27.1@sha256:81c3851a6f8cfd0ef8db76764352809e42db5cd44f97804cc1d4846afa845816

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
