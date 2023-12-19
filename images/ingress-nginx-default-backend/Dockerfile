FROM --platform=${TARGETPLATFORM} nginx:1.25.3@sha256:b098a22e8a1423b6316e17dc2757aec121b8f363af0303493bd31d76778415b3

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
