FROM ubuntu
EXPOSE 80
RUN apt update
RUN apt install apache2 -y
RUN apt install git-core -y
WORKDIR /home/
RUN git clone https://github.com/mdn/beginner-html-site-styled
RUN rm /var/www/html/index.html
RUN cp -r /home/beginner-html-site-styled/ /var/www/
RUN rm -r /var/www/html/
RUN mv /var/www/
RUN service apache2 start
