#!/usr/bin/env bash

sed -i 's/INSTALLED=true/INSTALLED=false/g' .env

php artisan migrate --force --streams
php artisan migrate --force
php artisan migrate --force --all-addons
php artisan streams:compile

sed -i 's/INSTALLED=false/INSTALLED=true/g' .env

exit 0; 
