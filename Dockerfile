FROM nginx

# Download and Install Updates
RUN    apt-get -y update;
RUN    apt-get -y install build-essential;

COPY . /etc/cloud66/webroot;