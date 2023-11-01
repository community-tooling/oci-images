FROM --platform=${TARGETPLATFORM} nginx:1.25.3@sha256:45c1e269ef2eb8cb0fa91f875bb3ba3c7b92cf50b2e19ddc51bef0edabcb4cb6

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
