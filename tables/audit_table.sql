drop table if exists "informix".audit_table ;
create table "informix".audit_table 
  (
    tabname varchar(18) not null ,
    dml_type char(1) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (dml_type IN ('D' ,'U' )) constraint "informix".audit_dml38
  );

