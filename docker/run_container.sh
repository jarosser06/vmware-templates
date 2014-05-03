#!/bin/bash

sudo docker run -d -p 8080:80 -v `pwd`/docker/sites-enabled:/etc/nginx/sites-enabled -v `pwd`/http:/opt/http dockerfile/nginx
