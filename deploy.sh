#!/bin/bash
sudo echo "This is a CICD deployment" > /usr/share/nginx/html/index.html && sudo service nginx restart

