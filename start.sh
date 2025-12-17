#!/bin/bash

cd backendimage
pip install -r requirements.txt
exec gunicorn backend.wsgi --bind 0.0.0.0:$PORT
