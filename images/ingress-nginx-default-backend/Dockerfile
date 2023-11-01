FROM --platform=${TARGETPLATFORM} nginx:1.25.3@sha256:35e16351c585c0721f099bc638423cedc41efcd0f2da986f89ab441989e1768f

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
