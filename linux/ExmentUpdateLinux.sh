#!/bin/sh

echo ---------Start Exment Update---------
echo Execute Backup
php artisan exment:backup

echo Update exceedone/laravel-admin
composer require exceedone/laravel-admin


echo Update exceedone/exment
sleep 2
composer require exceedone/exment


echo Execute Update
sleep 2
php artisan exment:update

echo Finish Update!
sleep 5