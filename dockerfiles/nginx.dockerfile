FROM nginx:stable-alpine

WORKDIR /etc/nginx/conf.d

COPY nginx/nginx.conf .

RUN mv nginx.conf default.conf #renomeia arquivo para default.conf

WORKDIR /var/www/html

COPY src .