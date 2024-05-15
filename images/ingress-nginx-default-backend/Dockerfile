FROM --platform=${TARGETPLATFORM} nginx:1.26.0@sha256:192e88a0053c178683ca139b9d9a2afb0ad986d171fae491949fe10970dd9da9

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
