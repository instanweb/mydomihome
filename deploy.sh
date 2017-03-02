#!/bin/bash

ssh -v deploy@vps296315.ovh.net << EOF

echo '1. Updating sources'
cd /var/www/mydomihome
git checkout --force master
git pull

echo "2. Restart nginx"
sudo -n /bin/systemctl restart nginx.service

echo 'Done!'


EOF
