FROM nginx

# Download and Install Updates
RUN    apt-get -y update;
RUN    apt-get -y install build-essential;

# Move Static Website Files to serving directory
COPY . /usr/share/nginx/html;

CMD ["docker build", "-t verre-here-website ."]

CMD ["docker run", "--name some-nginx -d verre-here-website"]