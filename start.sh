#!/bin/bash
. /etc/profile
set -e

mkdir -p /etc/ssl/private
openssl req -x509 -nodes -newkey rsa:2048 -days 65536 -subj "/C=CN/ST=Zhejiang/L=Hangzhou/O=xiyoukeji/OU=Backend-department/CN=wqy" -keyout /etc/ssl/private/pure-ftpd.pem -out /etc/ssl/private/pure-ftpd.pem
chmod 600 /etc/ssl/private/*.pem
/usr/sbin/pure-ftpd-mysql -l mysql:/etc/pureftpd-mysql.conf -p 20000:20500 -A -L 10000:8 -s -Z -x -i -Y 1 -8 UTF-8 -U 113:002 -E -m 4 -X -k 90 -I 10 -c 50 -H -C 50 -9 UTF-8 -u 80