FROM --platform=${TARGETPLATFORM} nginx:1.27.1@sha256:065e98c6cf9a8d50f7f613d45fa759701aa53763ef1dbe32b8b01db9013f468b

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
