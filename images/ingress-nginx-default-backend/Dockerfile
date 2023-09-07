FROM --platform=${BUILDPLATFORM} nginx:1.25.2@sha256:b437ad7a4d9964a2d5cbee850946380722082d04a1a731275a583825d68eec92

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
