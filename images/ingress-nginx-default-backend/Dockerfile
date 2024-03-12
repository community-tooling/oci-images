FROM --platform=${TARGETPLATFORM} nginx:1.25.4@sha256:18090843a20ba39719ca4f389d509063ea4fcce9d16c7168f62404b6d630bc3e

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
