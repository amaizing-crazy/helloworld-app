FROM python:3.9-slim

WORKDIR /var/run
ADD templates /var/run/templates
COPY flask-app.py ./
COPY cmap.txt ./

RUN pip install --no-cache-dir requests flask
EXPOSE 5005
CMD python /var/run/flask-app.py 