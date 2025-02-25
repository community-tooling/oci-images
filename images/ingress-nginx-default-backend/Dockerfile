FROM --platform=${TARGETPLATFORM} nginx:1.27.4@sha256:a807a4af37edad929136828e1b0ed105831f27e5aeecf542fa0dc0693f9e475d

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
