FROM --platform=${TARGETPLATFORM} nginx:1.27.5@sha256:4f20dfd7f68059a1d2d6f877ac0ac48708153c7bc329ddb6faec28a9f7d6665f

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
