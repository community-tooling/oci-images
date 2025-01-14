FROM --platform=${TARGETPLATFORM} nginx:1.27.3@sha256:0e65e7b19ac0abab5c911b175ca20040c98200337337cbb366af24ab597927ea

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
