FROM --platform=${TARGETPLATFORM} nginx:1.25.3@sha256:bc6a3061a8642cddc5d4187e87b4979afdbf17b606f828dfc168465821642adb

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
