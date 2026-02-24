#!/usr/bin/env bash
set -e

echo "Installing Apache and setting it up..."
dnf install -y httpd

echo "Preparing html dirs"
mkdir -p /var/www/html


systemctl enable --now httpd
echo "Apache is running"

if [ -d /vagrant/html ] && [ "$(ls -A /vagrant/html 2>/dev/null)" ]; then
  cp -r /vagrant/html/* /var/www/html/
else
  echo "<h1>Apache no ar (default)</h1>" > /var/www/html/index.html
fi
