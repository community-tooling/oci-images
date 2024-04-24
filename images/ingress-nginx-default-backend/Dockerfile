FROM --platform=${TARGETPLATFORM} nginx:1.26.0@sha256:bd2e255621652d82f193422459de70317eb17cacd57ce3c0fb594765aae9192d

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
