## CircleCI [![CircleCI](https://circleci.com/gh/instanweb/mydomihome.svg?style=svg)](https://circleci.com/gh/instanweb/mydomihome)

# README
MyDomiHome is a simple web interface to a domotic system.
It will be connected to the MyDomiHomeDriver application which pilots electrical devices.

## Install
* Ruby and Rails version 

`ruby 2.4.0`

`Rails 5.0.1`

* System dependencies

`MySql 5.7.16`

* Configuration

update user and password in database.yml file

* Database creation

mysql -u `username` -p

create database mydomihome_production;

create database mydomihome_test;

create database mydomihome_development;

exit

Note : be sure that database option DEFAULT CHARACTER SET is utf8 and DEFAULT COLLATE is utf8_unicode_ci

alter database mydomihome_production default character set utf8 default collate utf8_unicode_ci;

alter database mydomihome_test default character set utf8 default collate utf8_unicode_ci;

alter database mydomihome_development default character set utf8 default collate utf8_unicode_ci;

* Database initialization

Use db:seed to create an admin account (password: admin). When logged, change password for security !

* Services (job queues, cache servers, search engines, etc.)

todo...

* Deployment instructions

todo...


