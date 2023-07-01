FROM --platform=${BUILDPLATFORM} nginx:1.25.1@sha256:593dac25b7733ffb7afe1a72649a43e574778bf025ad60514ef40f6b5d606247

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
