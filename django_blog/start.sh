#!/bin/bash
python manage.py collectstatic --noinput &&
uwsgi --ini /home/ubuntu/django_blog/uwsgi.ini
