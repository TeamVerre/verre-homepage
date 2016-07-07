FROM nginx

RUN    apt-get -y update;
RUN    apt-get -y install build-essential;

ADD . /usr/share/nginx/html;

