FROM ubuntu:14.04
MAINTAINER AARONv2.1 aaronvelasco1993@outlook.com
RUN apt-get update
RUN apt-get -y install apache2
RUN apt-get -y install wget
RUN apt-get -y install unzip
RUN wget https://github.com/AaronVelasco93/Test_pagina_web-/archive/master.zip
RUN unzip master.zip
RUN cp -a /Test_pagina_web--master/* var/www/html
EXPOSE 81
CMD /usr/sbin/apache2ctl -D FOREGROUND
