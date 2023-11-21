FROM --platform=${TARGETPLATFORM} nginx:1.25.3@sha256:725cd8bd9fe9bb36a661b87b718e5d4ca41c579d1d30560ad1799829dbbefaaf

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
