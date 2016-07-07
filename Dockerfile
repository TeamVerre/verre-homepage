FROM nginx
COPY static-html-directory /usr/share/nginx/html

RUN --name some-nginx -d some-content-nginx;
run --name some-nginx -d -p 443:80 some-content-nginx;