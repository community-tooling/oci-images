FROM --platform=${TARGETPLATFORM} nginx:1.25.4@sha256:4505e44646d175a819f80e172f4cf17cbc1404bc2908413175da943e2b8e460b

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
