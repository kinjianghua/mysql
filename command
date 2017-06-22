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


mysql> create table STUDENTS
    -> (
    ->    ID                   int not null auto_increment,
    ->    NAME                 varchar(40) not null,
    ->    AGE                  int not null,
    ->    SCORE                double not null,
    ->    COMM                 varchar(120),
    ->    primary key (ID)
    -> );
Query OK, 0 rows affected (0.10 sec)

mysql> show tables;
+---------------------+
| Tables_in_phplesson |
+---------------------+
| students            |
+---------------------+
1 row in set (0.00 sec)

mysql> desc students;
+-------+--------------+------+-----+---------+----------------+
| Field | Type         | Null | Key | Default | Extra          |
+-------+--------------+------+-----+---------+----------------+
| ID    | int(11)      | NO   | PRI | NULL    | auto_increment |
| NAME  | varchar(40)  | NO   |     | NULL    |                |
| AGE   | int(11)      | NO   |     | NULL    |                |
| SCORE | double       | NO   |     | NULL    |                |
| COMM  | varchar(120) | YES  |     | NULL    |                |
+-------+--------------+------+-----+---------+----------------+
5 rows in set (0.00 sec)

mysql> insert into students(name, age, score) values('li', 10, 78.5);
Query OK, 1 row affected (0.00 sec)

mysql> insert into students values(2, 'ma', 12, 90, "A");
Query OK, 1 row affected (0.00 sec)

mysql> select * from students;
+----+------+-----+-------+------+
| ID | NAME | AGE | SCORE | COMM |
+----+------+-----+-------+------+
|  1 | li   |  10 |  78.5 | NULL |
|  2 | ma   |  12 |    90 | A    |
+----+------+-----+-------+------+
2 rows in set (0.00 sec)

mysql> alter table students add ADDRESS varchar(120) after SCORE;
Query OK, 0 rows affected (0.18 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc students;
+---------+--------------+------+-----+---------+----------------+
| Field   | Type         | Null | Key | Default | Extra          |
+---------+--------------+------+-----+---------+----------------+
| ID      | int(11)      | NO   | PRI | NULL    | auto_increment |
| NAME    | varchar(40)  | NO   |     | NULL    |                |
| AGE     | int(11)      | NO   |     | NULL    |                |
| SCORE   | double       | NO   |     | NULL    |                |
| ADDRESS | varchar(120) | YES  |     | NULL    |                |
| COMM    | varchar(120) | YES  |     | NULL    |                |
+---------+--------------+------+-----+---------+----------------+
6 rows in set (0.00 sec)

mysql> alter table students change ADDRESS LOCATION varchar(120);
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc students;
+----------+--------------+------+-----+---------+----------------+
| Field    | Type         | Null | Key | Default | Extra          |
+----------+--------------+------+-----+---------+----------------+
| ID       | int(11)      | NO   | PRI | NULL    | auto_increment |
| NAME     | varchar(40)  | NO   |     | NULL    |                |
| AGE      | int(11)      | NO   |     | NULL    |                |
| SCORE    | double       | NO   |     | NULL    |                |
| FAVORITE | varchar(40)  | YES  |     | NULL    |                |
| LOCATION | varchar(120) | YES  |     | NULL    |                |
| COMM     | varchar(120) | YES  |     | NULL    |                |
+----------+--------------+------+-----+---------+----------------+
7 rows in set (0.00 sec)

mysql> alter table students change STU_ID STU_ID int AUTO_INCREMENT;
Query OK, 2 rows affected (0.08 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> desc students;
+----------+--------------+------+-----+---------+----------------+
| Field    | Type         | Null | Key | Default | Extra          |
+----------+--------------+------+-----+---------+----------------+
| STU_ID   | int(11)      | NO   | PRI | NULL    | auto_increment |
| NAME     | varchar(40)  | NO   |     | NULL    |                |
| AGE      | int(11)      | NO   |     | NULL    |                |
| SCORE    | double       | NO   |     | NULL    |                |
| FAVORITE | varchar(40)  | YES  |     | NULL    |                |
| LOCATION | varchar(120) | YES  |     | NULL    |                |
| COMM     | varchar(120) | YES  |     | NULL    |                |
+----------+--------------+------+-----+---------+----------------+
7 rows in set (0.00 sec)


mysql> create table TEACHER
    -> (
    ->    ID                   int not null auto_increment,
    ->    NAME                 varchar(40) not null,
    ->    AGE                  int not null,
    ->    SCORE                double not null,
    ->    WORK_YEAR            int not null,
    ->    ADDRESS              varchar(120),
    ->    CREATE_TIME          datetime,
    ->    COMM                 varchar(120),
    ->    primary key (ID)
    -> );
Query OK, 0 rows affected (0.10 sec)

mysql> insert into teacher(NAME,AGE,SCORE,WORK_YEAR) values ("佐藤",40,60,15);
Query OK, 1 row affected (0.02 sec)

mysql> select * from teacher;
+----+------+-----+-------+-----------+---------+-------------+------+
| ID | NAME | AGE | SCORE | WORK_YEAR | ADDRESS | CREATE_TIME | COMM |
+----+------+-----+-------+-----------+---------+-------------+------+
|  1 | 佐藤 |  40 |    60 |        15 | NULL    | NULL        | NULL |
+----+------+-----+-------+-----------+---------+-------------+------+
1 row in set (0.00 sec)

mysql> insert into teacher(NAME,AGE,SCORE,WORK_YEAR, CREATE_TIME) values ("谷川",43,60,12, '2016-12-12 14:34:56');
Query OK, 1 row affected (0.02 sec)

mysql> insert into teacher(NAME,AGE,SCORE,WORK_YEAR, CREATE_TIME) values ("谷川",43,60,12, '2016-12-12 14:34:56');
Query OK, 1 row affected (0.02 sec)

mysql> insert into teacher(NAME,AGE,SCORE,WORK_YEAR, CREATE_TIME) values ("長谷川",43,60,12, now());
Query OK, 1 row affected (0.01 sec)

mysql> select * from teacher;
+----+--------+-----+-------+-----------+---------+---------------------+------+
| ID | NAME   | AGE | SCORE | WORK_YEAR | ADDRESS | CREATE_TIME         | COMM |
+----+--------+-----+-------+-----------+---------+---------------------+------+
|  1 | 佐藤   |  40 |    60 |        15 | NULL    | NULL                | NULL |
|  2 | 谷川   |  43 |    60 |        12 | NULL    | 2016-12-12 14:34:56 | NULL |
|  3 | 長谷川 |  43 |    60 |        12 | NULL    | 2017-06-21 10:42:18 | NULL |
+----+--------+-----+-------+-----------+---------+---------------------+------+
3 rows in set (0.00 sec)

データベースをバックアップ
C:\Users\kingjianghua>mysqldump --opt --user=jin --password phplesson > phplesson01.sql
Enter password: ****









