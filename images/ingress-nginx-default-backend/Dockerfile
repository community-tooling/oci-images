FROM --platform=${TARGETPLATFORM} nginx:1.29.6@sha256:bc45d248c4e1d1709321de61566eb2b64d4f0e32765239d66573666be7f13349

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
