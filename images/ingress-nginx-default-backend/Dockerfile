FROM --platform=${TARGETPLATFORM} nginx:1.25.4@sha256:6fe56b70f598dee94864a971e9ce7b022fd71651dd278c7ef60e584248aca972

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
