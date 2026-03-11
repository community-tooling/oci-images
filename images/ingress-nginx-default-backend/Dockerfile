FROM --platform=${TARGETPLATFORM} nginx:1.29.6@sha256:5a370a78b13006cb83692146187c4850911d0951653eeed17069bdfaaa0d01f3

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
