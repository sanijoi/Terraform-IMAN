#!/bin/bash
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
echo "<p> Hello Iman from EC2 instances </p>" >> /var/www/html/index.html