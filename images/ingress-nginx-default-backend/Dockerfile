FROM --platform=${BUILDPLATFORM} nginx:1.25.1@sha256:e361ebd7123278ec4b279e1a97237b71b6993600b02843c8b4bf8b6f65cfa3d7

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
