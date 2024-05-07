FROM --platform=${TARGETPLATFORM} nginx:1.26.0@sha256:9f0d283eccddedf25816104877faf1cb584a8236ec4d7985a4965501d080d84f

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
