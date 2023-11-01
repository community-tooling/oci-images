FROM --platform=${TARGETPLATFORM} nginx:1.25.3@sha256:cabbf9394106b80c74ad2caf9f97017e23356832b3ae4d491eb5d7b4092b93b8

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
