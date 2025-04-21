#!/bin/sh
echo "This script is being called"

# Initialize database
if [ ! -d "/var/lib/mysql/mysql" ]; then
    mysql_install_db --user=mysql --datadir=/var/lib/mysql
    # Start MariaDB
    mysqld --user=mysql --bootstrap << EOF
USE mysql;
FLUSH PRIVILEGES;
EOF
fi

# Start MariaDB in foreground
exec mysqld --user=mysql
