FROM nginx

# Download and Install Updates
RUN    apt-get -y update;
RUN    apt-get -y install build-essential;

RUN --name some-nginx -v /some/content:/usr/share/nginx/html:ro -d nginx;