FROM --platform=${BUILDPLATFORM} nginx:1.25.1@sha256:fd159e6a56873a44bd9ff6acddb2cbd27d96663d34cc98e2482aec1a69422beb

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
