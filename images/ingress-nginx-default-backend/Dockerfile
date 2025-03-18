FROM --platform=${TARGETPLATFORM} nginx:1.27.4@sha256:57a563126c0fd426346b02e5aa231ae9e5fd66f2248b36553207a0eca1403fde

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
