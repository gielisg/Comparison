drop table if exists "informix".cl_dt_table ;
create table "informix".cl_dt_table 
  (
    cl_dt_tabcd char(2) not null ,
    file_type_code char(10) not null ,
    tabname char(18) not null ,
    source_narr varchar(32) not null ,
    use_nl2 char(1) 
        default 'N' not null ,
    ar_tabname char(18) not null ,
    allow_reprocess char(1) 
        default 'Y' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (use_nl2 IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (allow_reprocess IN ('Y' ,'N' )) constraint "informix".yes_no
  );

