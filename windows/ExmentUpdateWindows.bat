@echo off
rem v1.1.1

cd %~dp0

echo ---------Exment�X�V�J�n---------
echo �o�b�N�A�b�v���s
call php artisan exment:backup

echo -- exceedone/laravel-admin�ŐV�Ŏ擾
call composer require exceedone/laravel-admin

echo exceedone/exment�ŐV�Ŏ擾
timeout 2
call composer require exceedone/exment

echo Exment�A�b�v�f�[�g
timeout 2
call php artisan exment:update


echo �������܂����B�R�}���h���I�����܂��B
timeout 5