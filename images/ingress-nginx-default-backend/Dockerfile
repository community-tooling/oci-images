FROM --platform=${TARGETPLATFORM} nginx:1.27.0@sha256:0acaab7c2237e052dc5adf1694ebce0b374063a62b2a1b7f2b3bc9cd3fb8c1ff

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
