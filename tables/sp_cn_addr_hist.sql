drop table if exists "informix".sp_cn_addr_hist ;
create table "informix".sp_cn_addr_hist 
  (
    hist_id serial not null ,
    sp_cn_ref integer not null ,
    addr_type_code char(2) not null ,
    address_ref integer not null ,
    start_dt datetime year to second not null ,
    end_dt datetime year to second 
        default current year to second not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

