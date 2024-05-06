FROM --platform=${TARGETPLATFORM} nginx:1.26.0@sha256:9f31b36acd5c2726457e288a7fdb4fdc416acac738f41a7208598cd43f844385

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
