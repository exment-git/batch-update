@echo off
rem v1.2.0

cd %~dp0

echo ---------Exment更新開始---------
echo バックアップ実行
call php artisan exment:backup

echo -- パッケージ最新化
call composer update

echo Exmentアップデート
timeout 2
call php artisan exment:update


echo 完了しました。コマンドを終了します。
timeout 5