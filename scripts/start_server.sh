#!/bin/bash
cd /home/ec2-user/flaskapp

pkill gunicorn || true
pkill python3 || true

nohup gunicorn -w 4 -b 0.0.0.0:5000 app:app > app.log 2>&1 &
