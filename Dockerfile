FROM nginx

RUN    apt-get -y update;
RUN    apt-get -y install build-essential;

ADD . /usr/share/nginx/html;

RUN cd /usr/share/nginx/html;

RUN build -t verre-homepage .;

#COPY ./verre-homepage /usr/share/nginx/html

RUN --name verre-homepage -d verre-homepage;
RUN --name verre-homepage -d -p 443:80 verre-homepage;