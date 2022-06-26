sudo apt-get update
sudo apt-get install -y python3.5
sudo unlink /usr/bin/python3
sudo ln -s /usr/bin/python3.5 /usr/bin/python3
sudo pip3 install django==2.1
sudo pip3 install gunicorn
sudo unlink /etc/nginx/sites-enabled/default
sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
#sudo ln -s /home/box/stepic_web_server/etc/gunicorn.conf   /etc/gunicorn.d/test
#sudo /etc/init.d/gunicorn restart
#sudo /etc/init.d/mysql start
#sudo gunicorn --bind 0.0.0.0:8080 hello:wsgi_application
#sudo gunicorn --bind 0.0.0.0:8000 ask.wsgi:application
