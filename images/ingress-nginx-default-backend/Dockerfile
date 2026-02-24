FROM --platform=${TARGETPLATFORM} nginx:1.29.5@sha256:44d1be91d34f545895e9b422036782123c63e4cd4a11bbfc20bfe53ac59f7798

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
