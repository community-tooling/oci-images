FROM --platform=${TARGETPLATFORM} nginx:1.29.5@sha256:cc2c57fe72d5511e4e7da8ac3d51854d3379f08b2e5fdad03c65a393874d8a29

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
