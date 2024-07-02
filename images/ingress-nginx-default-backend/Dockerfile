FROM --platform=${TARGETPLATFORM} nginx:1.27.0@sha256:79af0ebf4efa167c8934ff2fe5381c13ef721ece28c2c0cfb07203e96d85700c

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
