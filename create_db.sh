#!/bin/bash
# a script for batch creating MySQL dbs and users
# source: http://jetpackweb.com/blog/2009/07/20/bash-script-to-create-mysql-database-and-user/

EXPECTED_ARGS=3
E_BADARGS=65
MYSQL=`which mysql`

dbname=$1
dbuser=$2
dbpass=$3

Q1="CREATE DATABASE IF NOT EXISTS $dbname;"
Q2="CREATE USER $dbuser@'localhost' IDENTIFIED BY '$dbpass';"
Q3="GRANT SELECT ON CIS3323.* TO '$dbuser'@'localhost' IDENTIFIED BY '$dbpass' WITH GRANT OPTION;"
Q4="GRANT SELECT ON social.* TO '$dbuser'@'localhost' IDENTIFIED BY '$dbpass' WITH GRANT OPTION;"
Q5="GRANT SELECT ON rating.* TO '$dbuser'@'localhost' IDENTIFIED BY '$dbpass' WITH GRANT OPTION;"
Q6="GRANT ALL PRIVILEGES ON $dbname.* TO '$dbuser'@'localhost' IDENTIFIED BY '$dbpass' WITH GRANT OPTION;"
SQL="${Q1}${Q2}${Q3}${Q4}${Q5}${Q6}"
 
if [ $# -ne $EXPECTED_ARGS ]
then
  echo "Usage: $0 dbname dbuser dbpass"
  exit $E_BADARGS
fi

#echo "Executing $SQL"
$MYSQL -uroot -p -e "$SQL"