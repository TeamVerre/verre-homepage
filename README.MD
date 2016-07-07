# Verre Public Homepage
---

#### Notes on creating the Docker file

Using Nginx as my webserver to serve the website.
Using Node.JS and Express to deliver the pages.

##### [Dockerfile] (Dockerfile)
```bash
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
```

######Refrences Used:
[docker-library/docs - NGINX] (https://github.com/docker-library/docs/tree/master/nginx) |
[NGINX - Configuring HTTPS servers] (http://nginx.org/en/docs/http/configuring_https_servers.html) |
[Express - Serving static files in Express] (http://expressjs.com/en/starter/static-files.html)
