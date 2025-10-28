drop table if exists "informix".smdr_data_group ;
create table "informix".smdr_data_group 
  (
    group_id integer not null ,
    clli_name varchar(20) not null ,
    hex_num char(3)
  );

