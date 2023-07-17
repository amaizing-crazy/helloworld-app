FROM python:3.9-slim

WORKDIR /var/run
ADD templates /var/run/templates
COPY flask-app.py ./

RUN pip install --no-cache-dir requests flask
EXPOSE 5004
CMD python /var/run/flask-app.py 