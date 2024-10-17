FROM --platform=${TARGETPLATFORM} nginx:1.27.2@sha256:5a201296c759059572455e6141a7caf5a16fcad7d8fa540f4edf79fa22b4a91d

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
