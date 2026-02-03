FROM --platform=${TARGETPLATFORM} nginx:1.29.4@sha256:6c9ab46b34b89274be77bf50253f97bf8f16eb11b98128d5694a8ae9b3efa2ed

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
