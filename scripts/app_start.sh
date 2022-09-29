#!/bin/bash
cd /home/ec2-user/server/
    sudo groupadd -r www-data
    sudo useradd www-data -M -r -g www-data -s /sbin/nologin
    npm run build
    cd /home/ec2-user/server/build/
    mv index.html /var/www/html/
    sudo cp -r . /var/www/html/simple-reactjs-app/
    sdo shown -R www-data:www-data /var/www/
    
