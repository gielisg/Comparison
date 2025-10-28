drop table if exists "informix".credit_enq_table ;
create table "informix".credit_enq_table 
  (
    request_type char(18) not null ,
    credit_ref integer not null ,
    tabname char(18),
    source_narr varchar(32) not null ,
    ar_tabname char(18),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

