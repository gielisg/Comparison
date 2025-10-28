drop table if exists "informix".ipn_error ;
create table "informix".ipn_error 
  (
    sel_file_num integer not null ,
    sp_cn_ref integer not null ,
    err_code char(3) not null ,
    err_type char(1) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (err_type IN ('F' ,'H' ,'S' ,'W' )) constraint "informix".err_type20
  );

