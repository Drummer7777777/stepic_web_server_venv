sudo apt-get update
echo "----------------------END UPDATE----------------------------"
sudo apt-get install -y python3.5
echo "----------------------END INSTALL PYTHON3----------------------------"
sudo unlink /usr/bin/python3
echo "----------------------END END UNLINK----------------------------"
sudo ln -s /usr/bin/python3.5 /usr/bin/python3
echo "----------------------END ln -s ----------------------------"
sudo pip3 install django==2.1
echo "----------------------END INSTALL DJANGO----------------------------"
sudo pip3 install gunicorn
echo "----------------------END INSTALL GUNICORN----------------------------"
sudo unlink /etc/nginx/sites-enabled/default
echo "----------------------END UNLINK----------------------------"
sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
echo "----------------------END ln -s ----------------------------"
sudo /etc/init.d/nginx restart
echo "----------------------END RESTART NGINX----------------------------"
sudo ln -s /home/box/stepic_web_server/etc/gunicorn.conf   /etc/gunicorn.d/test
echo "----------------------END ln -s GUNICORN conf----------------------------"
sudo /etc/init.d/gunicorn restart
echo "----------------------END RESTART GUNICORN----------------------------"
sudo /etc/init.d/mysql start
echo "----------------------END START MYSQL----------------------------"
sudo gunicorn --bind 0.0.0.0:8080 hello:wsgi_application
echo "----------------------END GUNICORN bind 1 ----------------------------"
sudo gunicorn --bind 0.0.0.0:8000 ask.wsgi:application
echo "----------------------END GUNICORN bind 2 ----------------------------"
