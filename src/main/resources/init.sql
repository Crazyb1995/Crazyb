drop table if exists tb_user;

create table tb_user(
    id bigint not null auto_increment,
    user_name varchar(64) not null,
    password varchar(255) not null,
    phone varchar(32),
    email varchar(64),
    sex varchar(8),
    last_login DATE,
    register_time DATE,
    primary key (id)
)engine=InnoDB default charset=utf8;