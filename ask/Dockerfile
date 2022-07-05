FROM python:3

WORKDIR /app

COPY . /app

RUN apt-get update \
&& apt-get install -y python3 \
&& apt-get install -y python3-pip \
&& pip3 install django==2.1 \
&& pip3 install gunicorn

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "ask.wsgi:application"]

