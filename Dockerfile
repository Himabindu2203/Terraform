From ubuntu : 16.04
MAINTAINER  "himabindu"
RUN apt-get update
RUN apt-get install -Y nginx
COPY index.html /usr/share/nginx/html
EXPOSE 80
