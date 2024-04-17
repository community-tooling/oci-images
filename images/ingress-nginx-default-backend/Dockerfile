FROM --platform=${TARGETPLATFORM} nginx:1.25.5@sha256:5836a1882373523e27375456b9ec8cf6fd5877760cb8c7782c62baeb6bac0f58

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
