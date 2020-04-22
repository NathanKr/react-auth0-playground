#!/bin/sh
# run one level above react-auth0-playground 
# assume only one process run by pm2 otherwise use process name
# do once : NODE_ENV must be set to "production" on /etc/environment and reboot
# do once : very the port on /etc/nginx/sites-available/default is correct 
#            in case you need to change it e.g. to 5000 you need : 
#            nginx -t   
#            service nginx restart   

pm2 stop 0
pm2 delete 0 
pm2 save --force
rm -r react-auth0-playground
git clone https://github.com/NathanKr/react-auth0-playground.git
cd react-auth0-playground/01-login
npm install
npm run build
pm2 start server.js
pm2 save

