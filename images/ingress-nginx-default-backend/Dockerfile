FROM --platform=${TARGETPLATFORM} nginx:1.29.0@sha256:c424bd04bb9d3dd358bfb73557283e38e00fa4ceee983c92be2a8ea4dac923df

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
