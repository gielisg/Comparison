drop table if exists "informix".audit_header ;
create table "informix".audit_header 
  (
    audit_ref serial not null ,
    tabname varchar(18) not null ,
    dml_type char(1) not null ,
    being_moved char(1),
    key1 varchar(32),
    key2 varchar(32),
    key3 varchar(32),
    key4 varchar(32),
    key5 varchar(32),
    key6 varchar(32),
    key7 varchar(32),
    key8 varchar(32),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (dml_type IN ('D' ,'U' )) constraint "informix".audit_dml39
  );

