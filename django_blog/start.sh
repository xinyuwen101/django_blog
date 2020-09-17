#!/bin/bash
python manage.py collectstatic --noinput &&
uwsgi --ini /var/www/html/django_blog/uwsgi.ini
