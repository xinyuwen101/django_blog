FROM python

ENV PYTHONUNBUFFERED 1

RUN mkdir -p /home/ubuntu/django_blog

WORKDIR /home/ubuntu/django_blog

ADD . /home/ubuntu/django_blog

RUN pip install -r requirements.txt

RUN chmod +x ./start.sh