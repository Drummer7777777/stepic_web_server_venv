FROM ubuntu

COPY . /app

RUN apt-get update \
&& apt-get install -y nginx \
&& unlink /etc/nginx/sites-enabled/default \
&& ln -s /app/nginx.conf  /etc/nginx/sites-enabled/test.conf 

CMD ["nginx", "-g", "daemon off;"]

