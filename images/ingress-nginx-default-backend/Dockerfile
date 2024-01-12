FROM --platform=${TARGETPLATFORM} nginx:1.25.3@sha256:0840ed62883c6beab5a730b19ab086f7c1a153d5c6e7c5382b8413d837a0ee4d

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
