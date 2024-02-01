FROM --platform=${TARGETPLATFORM} nginx:1.25.3@sha256:985224176778a8939b3869d3b9b9624ea9b3fe4eb1e9002c5f444d99ef034a9b

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
