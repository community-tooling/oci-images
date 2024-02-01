FROM --platform=${TARGETPLATFORM} nginx:1.25.3@sha256:6eb953446a36ad7aaa1624ff7b0fba5c8f8742e13fbef572cda3cac202fcf4aa

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
