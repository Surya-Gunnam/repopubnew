FROM ubuntu
LABEL authorname=Surya
RUN apt update -y && apt install apache2 -y
RUN mkdir /app
RUN useradd surya
COPY . /var/www/html
WORKDIR /app
ENV app=v1
USER surya
EXPOSE 80
CMD sleep 1000
