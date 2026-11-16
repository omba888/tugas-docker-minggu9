FROM nginx:alpine
LABEL maintainer="martynuz0@gmail.com"
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
