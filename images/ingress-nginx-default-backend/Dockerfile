FROM --platform=${TARGETPLATFORM} nginx:1.25.5@sha256:684889a0cdf28aa111c84055fb79f14a4846231e656a862b1cfdec809daab374

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
