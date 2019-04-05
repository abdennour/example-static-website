FROM nginx:alpine
LABEL maintainer="in.abdennoor.com"

COPY . /usr/share/nginx/html

# EXPOSE 80;
