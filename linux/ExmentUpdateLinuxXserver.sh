#!/bin/sh
###v1.1.0


##### ---------Change Variables---------
# Please set composer path. Need to call from cron.
composer_path=''
home_path=''


##### ---------Logic Start---------
if [ -n "$composer_path" ]; then
composer=$composer_path
else
composer='composer'
fi

if [ -n "$home_path" ]; then
export PATH=${home_path}/bin:$PATH
fi


echo ---------Start Exment Update---------
echo Execute Backup
php artisan exment:backup

echo Update exceedone/laravel-admin
$composer require exceedone/laravel-admin


echo Update exceedone/exment
sleep 2
$composer require exceedone/exment


echo Execute Update
sleep 2
php artisan exment:update

echo Finish Update!
sleep 5