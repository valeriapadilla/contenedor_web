FROM ubuntu
EXPOSE 80
RUN apt update
RUN apt install apache2 -y
RUN apt install git-core -y
WORKDIR /home/
RUN git clone https://github.com/valeriapadilla/contenedor_web
RUN rm /var/www/html/index.html
RUN cp -r /home/contenedor_web/ /var/www/html/
RUN cp /var/www/html/contenedor_web/index.html /var/www/html/
RUN service apache2 start
