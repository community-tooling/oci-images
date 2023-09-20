FROM --platform=${BUILDPLATFORM} nginx:1.25.2@sha256:f84caae4439aa1d6b8b645f9bb0557d2ad7b8f654c9f360f24f48eb1363f9deb

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
