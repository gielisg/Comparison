drop table if exists "informix".autonum ;
create table "informix".autonum 
  (
    autonum_code char(30) not null ,
    last_num_used int8 not null ,
    autonum_prefix varchar(10),
    autonum_digits integer,
    start_num int8 not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

