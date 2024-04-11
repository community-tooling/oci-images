FROM --platform=${TARGETPLATFORM} nginx:1.25.4@sha256:07145ce64726c77459474a1e283d45d6755d9b175c2cc0bd85fe693ee09db744

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
