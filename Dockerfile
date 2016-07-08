# DOCKER-VERSION 1.1.2
FROM    node:argon

# Install Node.js and npm
RUN    apt-get -y update
RUN    apt-get -y install build-essential

# Bundle app source
ADD . /src
# Install app dependencies
RUN cd /src; npm install

CMD ["node", "/src/app.js"]