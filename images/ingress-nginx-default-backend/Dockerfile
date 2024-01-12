FROM --platform=${TARGETPLATFORM} nginx:1.25.3@sha256:ae32a851aff27484a6b5fd3ed91b96e8ff37d17de473ca535af962bf2c2f3aec

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
