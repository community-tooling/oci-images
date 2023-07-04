FROM --platform=${BUILDPLATFORM} nginx:1.25.1@sha256:67b0768bd38e3fb2fdfc42550f55e7c8fef59e198cd03ca68f8590b3ef336320

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
