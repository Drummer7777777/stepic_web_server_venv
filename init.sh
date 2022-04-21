sudo unlink /etc/nginx/sites-enabled/default
sudo ln -s /home/box/stepic_web_server/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
#sudo ln -s /home/box/stepic_web_server/etc/gunicorn.conf   /etc/gunicorn.d/test
#sudo /etc/init.d/gunicorn restart
#sudo /etc/init.d/mysql start
sudo gunicorn --bind 0.0.0.0:8080 hello:wsgi_application
sudo gunicorn --bind 0.0.0.0:8000 ask.wsgi:application
