#!/bin/bash

echo "========== Deployment Started =========="

echo "Updating packages..."
sudo apt update -y


echo "Installing nginx..."
sudo apt install nginx -y


echo "Starting nginx service..."
sudo systemctl start nginx


echo "Enable nginx after reboot..."
sudo systemctl enable nginx


echo "Creating webpage..."

echo "
<html>
<head>
<title>DevOps Project</title>
</head>

<body>
<h1>Hello from AWS EC2</h1>
<h2>Deployed using Bash Automation</h2>
</body>

</html>
" | sudo tee /var/www/html/index.html


echo "========== Deployment Completed =========="
