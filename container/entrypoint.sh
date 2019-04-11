#!/bin/sh
cd /usr/src/app &&
gunicorn -t 3600 -b :8000 django_demo.wsgi
