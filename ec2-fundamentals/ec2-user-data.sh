#!/bin/bash
# Use this for your user data (script from top to bottom)
# install httpd (Linux 2 version)
#
# EC2 Section - ECT User Data
# Script runs only on first start
# Configures the server to be a web server
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html
