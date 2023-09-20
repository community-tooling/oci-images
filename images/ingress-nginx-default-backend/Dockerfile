FROM --platform=${BUILDPLATFORM} nginx:1.25.2@sha256:112b224f9d7f74ac22211c70108f4328c80be7eb2768f7ee6ace6b120fbaf593

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
