#docker build ./  -t apidemo
#docker run -p 80:80 -t apidemo

FROM tiangolo/uwsgi-nginx-flask:flask

COPY ./app /app
