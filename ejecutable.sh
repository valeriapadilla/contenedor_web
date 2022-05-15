#!/usr/bin/bash
sudo apt update
sudo apt install git
cd /home/
sudo git clone https://github.com/valeriapadilla/contenedor_web
sudo docker build -t periodico:v01 /home/contenedor_web/
sudo docker run -d -p 80:80 periodico:v01 apachectl -D FOREGROUND
