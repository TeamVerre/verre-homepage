# Verre Public Homepage
---

#### Notes on creating the Docker file

Using Nginx as my webserver to serve the website.

##### [Dockerfile] (../Dockerfile)
```bash
FROM nginx

# Download and Install Updates
RUN    apt-get -y update;
RUN    apt-get -y install build-essential;

# Move Static Website Files to serving directory
ADD . /usr/share/nginx/html;
```

######Refrences Used:
---

[docker-library/docs - NGINX] (https://github.com/docker-library/docs/tree/master/nginx)
[NGINX - Configuring HTTPS servers] (http://nginx.org/en/docs/http/configuring_https_servers.html)
[NGINX - Beginner’s Guide] (http://nginx.org/en/docs/beginners_guide.html)

---

![alt text](http://nginx.org/nginx.png "NGINX")
![alt text](https://www.docker.com/sites/default/files/docker_banner_image_12312.svg "Docker")