FROM --platform=${TARGETPLATFORM} nginx:1.27.3@sha256:5ddf6decf65ea64c0492cd38098a9db11cb0da682478d3e0cfa8cdfdeb112f30

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
