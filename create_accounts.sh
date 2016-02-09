#!/bin/bash
while read passwd username
do
  echo "$passwd:$username"
  ./create_db.sh $username $username $passwd
done < users.txt