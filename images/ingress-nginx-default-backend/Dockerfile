FROM --platform=${TARGETPLATFORM} nginx:1.29.5@sha256:0d1b1f0656a7cb1e2e8135bb1ea99d889ee5d3345fc20388da3f555ad77cf2dc

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
