drop table if exists "informix".trigger_table ;
create table "informix".trigger_table 
  (
    tabname varchar(18) not null ,
    dml_type char(1) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (dml_type IN ('I' ,'D' ,'U' )) constraint "informix".dml_type2
  );

