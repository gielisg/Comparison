drop table if exists "informix".ipn_err_code ;
create table "informix".ipn_err_code 
  (
    err_code char(3) not null ,
    err_narr varchar(50) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

