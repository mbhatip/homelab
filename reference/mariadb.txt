MariaDB> create database DATABASE_NAME;
Create a new user (only with local access) and grant privileges to this user on the new database:

  MariaDB> grant all privileges on DATABASE_NAME.* TO 'USER_NAME'@'localhost' identified by 'PASSWORD';
Create a new user (with remote access) and grant privileges to this user on the new database:

  MariaDB> grant all privileges on DATABASE_NAME.* TO 'USER_NAME'@'%' identified by 'PASSWORD';
After modifying the MariaDB grant tables, execute the following command in order to apply the changes:

  MariaDB> flush privileges;
