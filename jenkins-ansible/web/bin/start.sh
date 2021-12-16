#!/bin/bash

#starts ssh 

/usr/sbin/sshd

# starts php process in background 

/usr/sbin/php-fpm -c /etc/php/fpm 

#starts nginx Demo

nginx -g 'daemon off;'
