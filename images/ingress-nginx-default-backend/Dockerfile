FROM --platform=${TARGETPLATFORM} nginx:1.25.2@sha256:ee95754109927fbf510f008ee0a24620dff190f4d550b5787d1eaaddb9fd5ffd

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
