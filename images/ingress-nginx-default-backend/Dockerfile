FROM --platform=${BUILDPLATFORM} nginx:1.25.1@sha256:509e5996b4021a0a1b4e0314b6405b2c44f5ddcf07bde6e967b657c36b878cb6

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
