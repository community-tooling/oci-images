FROM --platform=${TARGETPLATFORM} nginx:1.25.4@sha256:74d949d270af3b894c0968b59daf36943310d3498bbaf91b7467feec748824e3

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
