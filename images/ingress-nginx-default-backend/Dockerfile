FROM --platform=${TARGETPLATFORM} nginx:1.29.0@sha256:c8a44136afa900a94ac7a07c4d333afc749e8808c94c81d29541d84e091fb615

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
