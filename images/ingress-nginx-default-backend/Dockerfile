FROM --platform=${BUILDPLATFORM} nginx:1.25.1@sha256:209ec203e6cf295e5f363bf24302cd32dd025c05ea3d292535ef597f8bcf7498

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
