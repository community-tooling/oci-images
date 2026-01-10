FROM --platform=${TARGETPLATFORM} nginx:1.29.4@sha256:fa5f6b4cc851e85f8542619dac4f60b1f24681fc7be221d00f4221c4f3b92caa

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
