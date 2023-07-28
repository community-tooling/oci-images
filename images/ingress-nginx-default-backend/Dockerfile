FROM --platform=${BUILDPLATFORM} nginx:1.25.1@sha256:d4b022da7b7c64ac14b8e8bdb07e1de8c8954b016454218891b74ae05b49b2e8

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
