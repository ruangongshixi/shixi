create table activity(
     id int auto_increment primary key,
     name varchar(20) not null,
     start_time date,
     end_time date,
     holder varchar(20) not null,
     contact varchar(20) not null,
     beizhu varchar(20) not null) default charset=utf8;