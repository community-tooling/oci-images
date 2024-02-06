FROM --platform=${TARGETPLATFORM} nginx:1.25.3@sha256:84c52dfd55c467e12ef85cad6a252c0990564f03c4850799bf41dd738738691f

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
