#!/bin/sh
###v1.2.0


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


echo Update Package
$composer update


echo Execute Update
sleep 2
php artisan exment:update

echo Finish Update!
sleep 5