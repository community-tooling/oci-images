FROM --platform=${TARGETPLATFORM} nginx:1.27.4@sha256:706959c57d76560ed77ea37b7e0a203388b5b12c153c4f820449b9d43d292f53

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
