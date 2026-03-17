#!/bin/sh
sudo yum -y install epel-release
sudo yum install -y nfs-utils
echo "Instalalação do ansible"
sudo yum -y install ansible
cat <<EOT >> /etc/hosts
192.168.56.2 control-node
192.168.56.3 app01
192.168.56.4 db01
EOT