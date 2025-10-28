drop table if exists "informix".sys_code ;
create table "informix".sys_code 
  (
    sys_table char(18) not null ,
    sys_hard_group char(3) not null ,
    sys_hard_code char(8) not null ,
    flex_key1 varchar(32) not null ,
    flex_key2 varchar(32),
    flex_narr varchar(32),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

