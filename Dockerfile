FROM nginx

# Download and Install Updates
RUN    apt-get -y update;
RUN    apt-get -y install build-essential;

# Move Static Website Files to serving directory
ADD . /usr/share/nginx/html;