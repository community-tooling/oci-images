FROM --platform=${TARGETPLATFORM} nginx:1.28.0@sha256:20555a07052bb7a1a0ed233d5dba2bdafb75e537948fadbc0e1fef151088dcdd

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
