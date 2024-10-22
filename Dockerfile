FROM httpd:latest
EXPOSE 777
RUN apt update -y && apt install unzip -y && apt install wget -y 
WORKDIR /usr/local/apache2/htdocs/
RUN rm -rf index.html
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page296/little-fashion.zip
RUN unzip little-fashion.zip
RUN mv 2127_little_fashion/* .
RUN rm -rf little-fashion.zip

