FROM --platform=${TARGETPLATFORM} nginx:1.29.1@sha256:75cad0ed4b9ea94413143f700eea1a71635806207ffb901b577c436a06ff4acd

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
