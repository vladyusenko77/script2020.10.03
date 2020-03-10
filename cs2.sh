#! /bind/bash

while [[ $# > 1 ]]
do
par="$1"
   case $par in
       --port)
         port="$2"
       shift
       sed -i "s/.*Listen 80*/Listen $port/" /etc/httpd/conf/httpd.conf
       ;;
   esac
       shift
done
service httpd restart
