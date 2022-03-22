#!/bin/bash

cd /app/

/opt/venv/bin/gunicorn testApp.wsgi:application --workers=3 --bind "0.0.0.0:80"
