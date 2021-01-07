@echo off
rem v1.1.1

cd %~dp0

echo ---------Exment更新開始---------
echo バックアップ実行
call php artisan exment:backup

echo -- exceedone/laravel-admin最新版取得
call composer require exceedone/laravel-admin

echo exceedone/exment最新版取得
timeout 2
call composer require exceedone/exment

echo Exmentアップデート
timeout 2
call php artisan exment:update


echo 完了しました。コマンドを終了します。
timeout 5