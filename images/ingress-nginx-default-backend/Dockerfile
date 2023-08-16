FROM --platform=${BUILDPLATFORM} nginx:1.25.2@sha256:26e1817e87e4bc36979b61a4c9b089ab55add4625e5085b2663163357206cb32

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
