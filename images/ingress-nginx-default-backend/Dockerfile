FROM --platform=${TARGETPLATFORM} nginx:1.25.3@sha256:0e1330510a8e57568e7e908b27a50658ae84de9e9f907647cb4628fbc799f938

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
