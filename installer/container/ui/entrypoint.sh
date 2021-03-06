#!/bin/bash

mkdir /tmp/dist && aws s3 cp s3://pacbot-data1/dist.zip /tmp && unzip /tmp/dist.zip -d /tmp/dist && cp -r /tmp/dist/* /etc/nginx/html/ && chmod -R 755 /etc/nginx/html/

nginx -g "daemon off;"
