FROM --platform=${TARGETPLATFORM} nginx:1.28.0@sha256:1fd589a0033784cbd9d1edca176424803e5a727af13a0ed475d9a7cb857a26db

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
