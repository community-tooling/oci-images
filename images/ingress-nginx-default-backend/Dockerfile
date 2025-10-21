FROM --platform=${TARGETPLATFORM} nginx:1.29.2@sha256:adf382fc753c14b1d584b45fb4ecf2c469dcd5b25a25a299540b9db418049b12

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
