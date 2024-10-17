FROM --platform=${TARGETPLATFORM} nginx:1.27.2@sha256:a6b75a320a9a95bcaed28484349557d1ec7426041be35a62386dfa6609225ad3

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
