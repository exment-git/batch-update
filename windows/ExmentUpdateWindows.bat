@echo off
rem v1.2.0

cd %~dp0

echo ---------Exment�X�V�J�n---------
echo �o�b�N�A�b�v���s
call php artisan exment:backup

echo -- �p�b�P�[�W�ŐV��
call composer update

echo Exment�A�b�v�f�[�g
timeout 2
call php artisan exment:update


echo �������܂����B�R�}���h���I�����܂��B
timeout 5