#!/bin/bash

echo "done"

IFS=,
while read column1 column2 column3 column4
      do
        echo "INSERT INTO results (column1_name,column2_name,column3_name,column4_name,column4_name) VALUES ('$column1', '$column2', '$column3' ,'$column4' , 1);"

done < filename.csv | mysql --user='db_user_name' --password='db_password' -D db_name;
echo "finish"


