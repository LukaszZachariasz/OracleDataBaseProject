@echo off
chcp 1250
mode con:cols=200
color F0
cd sql
sqlplus HR/HR@localhost/XE @main.sql
cd ..
pause
cls