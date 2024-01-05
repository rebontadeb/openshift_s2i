FROM quay.io/rebontadeb/training/nginx-nonroot:1.21.4-alpine 

WORKDIR /usr/share/nginx/html

COPY index.html .
