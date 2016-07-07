FROM nginx
COPY ./verre-homepage /usr/share/nginx/html

RUN --name some-nginx -d some-content-nginx;
RUN --name some-nginx -d -p 443:80 some-content-nginx;