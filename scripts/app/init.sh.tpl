# #!/bin/bash

export DB_HOST="mongodb://${db_host}:27017/posts"
# sudo "export DB_HOST=mongodb://${db_host}:27017" >> /home/ubuntu/.bashrc

# . ~/.bashrc

cd /home/ubuntu/web-app
npm install
pm2 start app.js
cd seeds/
node seed.js
sudo rm /etc/nginx/sites-enabled/default
sudo systemctl restart nginx


