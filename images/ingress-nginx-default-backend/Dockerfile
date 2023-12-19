FROM --platform=${TARGETPLATFORM} nginx:1.25.3@sha256:5040a25cc87f100efc43c5c8c2f504c76035441344345c86d435c693758874b7

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
