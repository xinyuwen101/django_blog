FROM python

ENV PYTHONUNBUFFERED 1

RUN mkdir -p /var/www/html/django_blog

WORKDIR /var/www/html/django_blog

ADD . /var/www/html/django_blog

RUN pip install -r requirements.txt

RUN chmod +x ./start.sh