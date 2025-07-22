#!/bin/bash

sudo apt update
sudo apt install nginx -y
sudo echo "hello lalit" > /var/www/html/index.html 
