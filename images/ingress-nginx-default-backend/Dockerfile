FROM --platform=${BUILDPLATFORM} nginx:1.25.1@sha256:807113fc11cd58e5d9bd10b45da66790bdea2e1c53ba57655e110d8e963a9cd5

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
