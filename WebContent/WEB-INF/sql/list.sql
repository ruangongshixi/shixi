create table list(
    -> a_id int,
    -> k_id varchar(20),
    -> status varchar(20) default '´ıÉó',
    -> foreign key(a_id) references activity(id),
    -> foreign key(k_id) references kaosheng(id),
    -> primary key(a_id,k_id)) default charset=utf8;