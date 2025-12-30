FROM --platform=${TARGETPLATFORM} nginx:1.29.4@sha256:ad85427e8c7147e2bfb485f7829e46316495695d7936a6d4459cfcfd351535cc

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
