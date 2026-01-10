FROM --platform=${TARGETPLATFORM} nginx:1.29.4@sha256:7272239bd21472f311aa3e86a85fdca0f1ad648995f983ab6e5e7dea665cd233

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
