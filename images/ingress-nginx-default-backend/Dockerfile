FROM --platform=${TARGETPLATFORM} nginx:1.29.6@sha256:df281a66ef12aa81c32c2a536cf83ca6c21c01b17c6633c43066e22e866dfcd7

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
