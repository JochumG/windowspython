#docker build ./  -t app
#docker run -p 80:80 -t app

#FROM tiangolo/uwsgi-nginx-flask:flask
FROM python:latest
 	
RUN apt-get update && \
    apt-get -y install nginx

RUN apt-get update && \
    apt-get -y install lirc

RUN apt-get update && \
    apt-get -y install python-dev 

RUN apt-get update && \
    apt-get -y install python-pip 

RUN pip install --upgrade pip virtualenv
	
	COPY ./app /app
	