#!/bin/bash
cd /home/ec2-user/server/
    sudo groupadd -r www-data
    sudo useradd www-data -M -r -g www-data -s /sbin/nologin
    npm run build
    cd /home/ec2-user/server/build/
    mv index.html /var/www/html/
    sudo cp -r . /var/www/html/simple-reactjs-app/
    sudo chown -R www-data:www-data /var/www/
    #sudo chown apache *
    # uncomment to start nginx if stopped
    # systemctl start nginx
    # mail  
#fi
#exit 

# original code is below

#ps aux  |  grep -i node  |  awk '{print $2}'  |  xargs sudo kill -9
#npm restart & 
#pm2 start npm --name "simple-reactjs-app" -- start
#pm2 startup
#pm2 save
#pm2 restart all
