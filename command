window + R -> Eneter

C:\Users\kingjianghua>mysql -u jin -p
Enter password: ****  (wifi)
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 25
Server version: 5.7.18-log MySQL Community Server (GPL)

Copyright (c) 2000, 2017, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| chuguole           |
| mysql              |
| performance_schema |
| qingheonline       |
| sakila             |
| sys                |
| test               |
| world              |
+--------------------+
9 rows in set (0.00 sec)

mysql> create database phplesson;
Query OK, 1 row affected (0.02 sec)

mysql> use phplesson;
Database changed

mysql> show tables;
Empty set (0.00 sec)




