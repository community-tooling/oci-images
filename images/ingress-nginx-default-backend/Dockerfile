FROM --platform=${TARGETPLATFORM} nginx:1.29.4@sha256:13310a9cc1de099b1bf22eaa712f491aa248ee524eaf930a0f0078c68124bfd4

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
