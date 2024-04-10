FROM --platform=${TARGETPLATFORM} nginx:1.25.4@sha256:5be228548c224e43da786fc22a8edf6caec832e8ffd94ab14cb654e6880a1bb8

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
