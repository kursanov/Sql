Server [localhost]:
Database [postgres]:
Port [5432]:
Username [postgres]:
Пароль пользователя postgres:
psql (14.5)
ПРЕДУПРЕЖДЕНИЕ: Кодовая страница консоли (866) отличается от основной
                страницы Windows (1251).
                8-битовые (русские) символы могут отображаться некорректно.
                Подробнее об этом смотрите документацию psql, раздел
                "Notes for Windows users".
Введите "help", чтобы получить справку.

postgres=#
postgres=# create table solaris(id serial primary key,model varchar,color varchar,price int);
CREATE TABLE
    postgres=# insort into solaris(model,color,price) values('hundai','black',39000);
ОШИБКА:  ошибка синтаксиса (примерное положение: "insort")
СТРОКА 1: insort into solaris(model,color,price) values('hundai','blac...
          ^
postgres=# insert into solaris(model,color,price) values('hundai','black',39000);
INSERT 0 1
postgres=# create table porter(id serial primmary key,model varchar,color varchar,price int);
ОШИБКА:  ошибка синтаксиса (примерное положение: "primmary")
СТРОКА 1: create table porter(id serial primmary key,model varchar,col...
                                        ^
postgres=# create table porter(id serial primary key,model varchar,color varchar,price int);
CREATE TABLE
postgres=# insert into porter(model,color,price) values('hundai','black',45000)
postgres-# insert into porter(model,color,price) values('hundai','black',45000)
postgres-# crate table s(id serial);
ОШИБКА:  ошибка синтаксиса (примерное положение: "insert")
СТРОКА 2: insert into porter(model,color,price) values('hundai','black...
          ^
postgres=# insert into porter(model,color,price) values('hundai','black',45000)
postgres-# insert into porter(model,color,price) values('hundai','black',45000)
postgres-# crate table s(id serial);]
ОШИБКА:  ошибка синтаксиса (примерное положение: "insert")
СТРОКА 2: insert into porter(model,color,price) values('hundai','black...
          ^
postgres-# crate table s(id serial);
ОШИБКА:  ошибка синтаксиса (примерное положение: "]")
СТРОКА 1: ]
          ^
postgres=# insert into porter(model,color,price) values('hundai','black',45000);
INSERT 0 1
postgres=# create  table sonata(id serial primary key,model varchar,color varchar,price int);
CREATE TABLE
postgres=# insert into sonata (model,color,price) values ('hundai','black',5000)
postgres-#  crate table s(id serial);
ОШИБКА:  ошибка синтаксиса (примерное положение: "crate")
СТРОКА 2:  crate table s(id serial);
           ^
postgres=# insert into sonata (model,color,price) values ('hundai','black',5000);
INSERT 0 1
postgres=# create table accent( id serial primary key, model vatchar, color varchar,price int);
ОШИБКА:  тип "vatchar" не существует
СТРОКА 1: create table accent( id serial primary key, model vatchar, c...
                                                            ^
postgres=# create table accent( id serial primary key, model varchar, color varchar,price int);
CREATE TABLE
postgres=# insert into accent (model,color, price) values ('hundai','black',5000);
INSERT 0 1
postgres=# create table
postgres-#  crate table s(id serial);
ОШИБКА:  ошибка синтаксиса (примерное положение: "table")
СТРОКА 2:  crate table s(id serial);
                 ^
postgres=# create table getz (id serial primary key,model varchar,color varchar,price int);
CREATE TABLE
postgres=# insert into getz (model,color,price) values ('hundai','black',6000);
INSERT 0 1
postgres=# create table tucson (id serial primary key,model varchar,color varchar,price int);
CREATE TABLE
postgres=# insert into tucson (model,color,price) values ('hundai','black',7000);
INSERT 0 1
postgres=# create table santafe (id serial primary key,model varchar,color varchar,price int);
CREATE TABLE
postgres=# insert into santafe(model,color,price) values ('hundai','black',65000);
INSERT 0 1
postgres=# create table elentra (id serial primary key,model varchar,color varchar,price int)
postgres-# crate table s(id serial);
ОШИБКА:  ошибка синтаксиса (примерное положение: "crate")
СТРОКА 2: crate table s(id serial);
          ^
postgres=# create table elentra (id serial primary key,model varchar,color varchar,price int);
CREATE TABLE
postgres=# insert into elentra (model,color,price) values ('hundai','black',4500);
INSERT 0 1
postgres=# create table matrix (id serial primary key,model varchar,color varchar,price int);
CREATE TABLE
postgres=# insert into matrix (model,color,price) values ('hundai','black',8000);
INSERT 0 1
postgres=# create table mufasa (id serial primary key,model varchar,color varchar,price int);
CREATE TABLE
postgres=# insert into mufasa(model,color,price) values('hundai','black'78000);
ОШИБКА:  ошибка синтаксиса (примерное положение: "78000")
СТРОКА 1: ...nto mufasa(model,color,price) values('hundai','black'78000);
                                                                  ^
postgres=# insert into mufasa(model,color,price) values('hundai','black',78000);
INSERT 0 1
postgres=# alter table solaris add column sonata_id int references sonata(id);
ALTER TABLE
postgres=# insert into solaris ( model,color,price,sonata_id) values ('hundai','black',4999,1);
INSERT 0 1
postgres=#