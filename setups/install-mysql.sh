#!/bin/bash

if which mysqld
then
	:
else
	sudo apt-get install -y mysql-server
fi

echo -e "n\ny\nn\ny\ny\n" | sudo mysql_secure_installation

echo -e "CREATE USER 'mrmurilo75'@'localhost' IDENTIFIED BY 'm2209';\nGRANT ALL PRIVILEGES ON *.* TO 'mrmurilo75'@'localhost' WITH GRANT OPTION;\nexit;\n" | sudo mysql


