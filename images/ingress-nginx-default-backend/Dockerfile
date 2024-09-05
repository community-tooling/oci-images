FROM --platform=${TARGETPLATFORM} nginx:1.27.1@sha256:0e4fe3ef42d60ff3586428b7892f9e5d0156206117c701e4e2282f1b29e129b5

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
