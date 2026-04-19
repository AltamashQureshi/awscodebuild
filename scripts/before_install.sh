#!/bin/bash
yum update -y
yum install -y python3 python3-pip
cd /home/ec2-user/flaskapp
pip3 install -r requirements.txt
