FROM --platform=${TARGETPLATFORM} nginx:1.25.3@sha256:775b948ed18e931cfe48c4664387162764dcf286303bbe02bd72703f72f17f02

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
