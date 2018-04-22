#!/bin/bash
sudo echo "This is a CICD deployment for staging website" > /usr/share/nginx/html/index.html && sudo systemctl restart nginx

