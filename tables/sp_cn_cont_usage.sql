drop table if exists "informix".sp_cn_cont_usage ;
create table "informix".sp_cn_cont_usage 
  (
    sp_cn_ref integer not null ,
    contact_code char(10) not null ,
    cont_defined_as char(4) not null ,
    start_dt datetime year to second not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

