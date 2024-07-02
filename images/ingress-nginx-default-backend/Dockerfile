FROM --platform=${TARGETPLATFORM} nginx:1.27.0@sha256:1aaa8180df68200fd41f9066cf62155e3b71183c04b2895a7388d5fd84ef3c8b

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
