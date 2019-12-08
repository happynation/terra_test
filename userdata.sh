#!/bin/bash

sudo yum install httpd -y
sudo systemctl start httpd -y
sudo systemctl enable httpd -y