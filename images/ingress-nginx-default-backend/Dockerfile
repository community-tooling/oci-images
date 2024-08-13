FROM --platform=${TARGETPLATFORM} nginx:1.27.0@sha256:81dbf3ecf1120d90ace4593096bb650a2d11d4a11d24c3aaea5bef7c9bbb2c88

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
