#!/bin/bash

db_user="test"
db_pass="test"
db_name="test"
db_port="3306"
table_name="timestamps"

while true; do
  date=$(date "+%D_%T")
  querry="CREATE TABLE IF NOT EXISTS $table_name (date VARCHAR(255) PRIMARY KEY); INSERT INTO $table_name VALUES('$date');"
  /usr/bin/mysql -u $db_user -p$db_pass -D $db_name  -e "$querry"
  sleep 5;
done
