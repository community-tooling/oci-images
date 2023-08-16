FROM --platform=${BUILDPLATFORM} nginx:1.25.2@sha256:748e1e0239955172c421269430a03a533fb8d593d7a7e817a2a9e1f8c37305b8

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
