FROM --platform=${TARGETPLATFORM} nginx:1.29.3@sha256:f36d51007aa734028a6ea852adc76f074c9e5f966a2044f094325a22f566a9e1

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
