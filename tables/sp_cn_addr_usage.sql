drop table if exists "informix".sp_cn_addr_usage ;
create table "informix".sp_cn_addr_usage 
  (
    sp_cn_ref integer not null ,
    addr_type_code char(2) not null ,
    start_dt datetime year to second not null ,
    address_ref integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

