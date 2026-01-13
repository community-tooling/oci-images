FROM --platform=${TARGETPLATFORM} nginx:1.29.4@sha256:06eb0c817047c1d0f247f700431a4cddfb26a7622903dcb6fbe264de2c588f23

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
