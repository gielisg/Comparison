drop table if exists "informix".trigger_header ;
create table "informix".trigger_header 
  (
    ref serial not null ,
    tabname varchar(18) not null ,
    dml_type char(1) not null ,
    key1 varchar(32),
    key2 varchar(32),
    exported_dt datetime year to second,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    
    check (dml_type IN ('I' ,'D' ,'U' )) constraint "informix".dml_type
  );

