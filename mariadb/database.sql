CREATE DATABASE todolist;
CREATE USER 'admin'@'%' IDENTIFIED BY '123456';
GRANT ALL PRIVILEGES ON todolist.* TO 'admin'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;