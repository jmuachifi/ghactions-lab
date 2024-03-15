#!/bin/bash
# Install Node.js and Express.js on Ubuntu 22.04

sudo apt update -y && sudo apt upgrade -y
sudo apt install -y nodejs npm
sudo npm install pm2 -g
sudo npm install -g express-generator
express --view=ejs myapp
cd myapp
npm install
npm install --production
pm2 start app.js
pm2 restart app.js
pm2 save
#DEBUG=myapp:* npm start
